 unit QuickSearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, ADODB,
  ActnList, ActnMan, jpeg, Mask, DBCtrls, Menus, ComCtrls, YDbgrid,
  ExtActns,  xpBitBtn, YCheckGroupBox, wwriched, AppEvnts, AdvGlowButton,
  CurvyControls, dxGDIPlusClasses, xpPanel;

type
  TQuickSearchF = class(TMBaseForm)
    ActionList1: TActionList;
    ANewSearch: TAction;
    ASearch: TAction;
    Panel1: TPanel;
    AdvancedSearch: TYCheckGroupBox;
    SubjectPanel: TYCheckGroupBox;
    Panel2: TPanel;
    Panel3: TPanel;
    tmrRefreshQueryMainForm: TTimer;
    onlSearch: TxpPanel;
    SearchPanel: TPanel;
    Label7: TLabel;
    TitleLabel: TLabel;
    PnlAdvanced: TxpPanel;
    LabelSendRecive: TLabel;
    Label11: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    OrgEdit: TCurvyEdit;
    SpeedButton2: TAdvGlowButton;
    SubRec: TCheckBox;
    SubItems: TCheckBox;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    RetroactionNo: TCurvyEdit;
    FollowEdit: TCurvyEdit;
    rdLetterNo: TRadioButton;
    rdAnidicatorNo: TRadioButton;
    cmbSearch_In_All_Secs: TCheckBox;
    cmbSearch_In_All_Years: TCheckBox;
    SpeedButton3: TAdvGlowButton;
    RecommiteOrgEdt: TCurvyEdit;
    PnlSubject: TxpPanel;
    SpeedButton4: TAdvGlowButton;
    EdSubject: TCurvyEdit;
    xpPanel3: TxpPanel;
    Label9: TLabel;
    lblRunevesht: TLabel;
    Search: TAdvGlowButton;
    BitBtn3: TAdvGlowButton;
    CenterNo: TCurvyEdit;
    chkRunevesht: TCheckBox;
    CheckBox1: TCheckBox;
    SpeedButton1: TAdvGlowButton;
    pnlReport: TxpPanel;
    Label6: TLabel;
    Indicator: TCurvyEdit;
    Label1: TLabel;
    ChBoIncommingNO: TCheckBox;
    Image1: TImage;
    EdtIncommingNO: TCurvyEdit;
    RBIncommingDate: TRadioButton;
    RBRegistrationdate: TRadioButton;
    Label10: TLabel;
    MERegFromDate: TMaskEdit;
    Label13: TLabel;
    MERegToDate: TMaskEdit;
    SenderTitle: TLabel;
    ToStaffer: TCurvyEdit;
    Label4: TLabel;
    Memo: TCurvyEdit;
    Label5: TLabel;
    UserMemo: TCurvyEdit;
    function  NoCondition:String;
    function  DateCondition:String;
    function  CenterNoCondition:String;
    function  FromCondition:String;
    function  SubjectCondition:String;
    function  RuneveshtCondition:String;
    function  RecommiteCondition:String;
    function  From_And_Recommite_Condition:String;
    function  SenderCondition:String;
    procedure ACloseExecute(Sender: TObject);
    procedure ANewSearchExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Initialize;
    procedure Refresh;
    function  IndicatorCondition:String;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure OrgEditChange(Sender: TObject);
    function  FollowCondition:String;
    function  RetroCondition:String;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SearchClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RetroactionNo1KeyPress(Sender: TObject; var Key: Char);
    procedure EdtIncommingNOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure EdSubjectChange(Sender: TObject);
    procedure ChBoIncommingNOClick(Sender: TObject);
    procedure MERegFromDateEnter(Sender: TObject);
    procedure MERegToDateEnter(Sender: TObject);
    procedure MERegFromDateDblClick(Sender: TObject);
    procedure MERegToDateDblClick(Sender: TObject);
    procedure MERegFromDateMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure MERegToDateMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure chkRuneveshtClick(Sender: TObject);
    procedure lblRuneveshtClick(Sender: TObject);
    procedure EdtIncommingNOExit(Sender: TObject);
    procedure tmrRefreshQueryMainFormTimer(Sender: TObject);
    procedure onlSearchAfterClose(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private

  public
    Condition:String;
    FromID:String;
    SubjectID:String;
    RecfromID:String;
  end;

Var
   QuickSearchF: TQuickSearchF;

implementation

uses EnteredLetterInputF, ExitedLetterInputF, yShamsiDate, UMain,
     dmu, FromOrgU, USearchTitle, StrUtils,BusinessLayer;

{$R *.dfm}
var
  DateF:string;

function TQuickSearchF.NoCondition:String;
var
  s: string;
begin
  Result:='';
  s:=trim(ReplaceKaf( EdtIncommingNO.text));
  if copy(s,1,2)='‘:' then
    Delete(s,1,2);

  if s<>'' then
    if MainForm.Letter_Type<>2 then
      Result:='(incommingno like ''%'+s+'%'')'
    else
      Result:='(indicatorID='+s+')';
end;


// ⁄ÌÌ‰ ‘—ÿ »—«Ì  «—ÌŒ À»  ‰«„Â Ê  «—ÌŒ Ê—Êœ ‰«„Â
function TQuickSearchF.DateCondition:String;
var
   FromDate,ToDate:string;
   DateFormat : String;
begin
   {Ranjbar 89.10.29 ID=285}
   {Result := '';
   S := Trim(date.Text);
   Result := '';
   if isDate(_Today,S,FDate,TDate) then
   begin
      Result := '('+DateF+'<='''+TDate+''') and  ('+DateF+'>='''+FDate+''')';
   end;   }
   {Ranjbar 89.10.29 ID=285}
   Result := '';
   if MERegFromDate.Text = '    /  /  ' then
      Exit;

   if RBRegistrationdate.Checked then
      DateF := 'Registrationdate'
   else
      DateF := 'IncommingDate';

   FromDate := MERegFromDate.Text;
   ToDate   := MERegToDate.Text;
   if ToDate = '    /  /  ' then
   begin
      ToDate := FromDate;
      MERegToDate.Text := FromDate;
   end;

   if ToDate < FromDate then
   begin
      ShowMyMessage('ÅÌ€«„',' «—ÌŒ œÊ„ ﬂÊçﬂ — «“  «—ÌŒ «Ê· „Ì »«‘œ. ·ÿ›« «’·«Õ ‰„«ÌÌœ',[mbOK],mtInformation);
      Abort;
   end;

   //Ã” ÃÊ »—«”«”  «—ÌŒ „Ì·«œÌ
   if StrToIntDef(LeftStr(FromDate,4),0) > 1900 then
   begin
      FromDate := ShamsiString(StrToDate(FromDate)); // »œÌ·  «—ÌŒ „Ì·«œÌ »Â ‘„”Ì
      ToDate   := ShamsiString(StrToDate(ToDate));
   end;
   //---

   Result := '('+DateF+'<='''+ToDate+''') and ('+DateF+'>='''+FromDate+''')';
   if Result <> '' then
      Result := '('+Result+')';
end;

function TQuickSearchF.CenterNoCondition:String;
begin
  if trim(CenterNo.text)<> '' then
    Result:='(centerno like ''%'+trim(ReplaceKaf(CenterNo.text))+'%'')'
  else
    Result:='';
end;

function TQuickSearchF.SenderCondition:String;
Var
  S : String;
begin
  Result := '';
  S := YeganehTrim(ReplaceKaf(ToStaffer.Text));
  if S <> '' then
    Result := '(ToStaffer like ''%' + S + '%'' or Toorgid in (Select id from Fromorganizations where title like ''%'+s+'%'' ))';
end;

function TQuickSearchF.FromCondition:String;
begin
  if FromID <> '' then
  begin
    if SubItems.Checked then
      //·Ì”  ¬Ì œÌ “Ì— „Ã„Ê⁄Â Â«Ì ç«—  ”«“„«‰Ì „Ê—œ ‰Ÿ— —« »«“ „Ì ê—œ«‰œ Get_Subset_OrgID  «»⁄
      Result:=' letter.FromOrgID in (Select Distinct OrgID From dbo.Get_Subset_OrgID(' + FromID + '))'
    else
      Result:=' Letter.FromOrgID = ' + FromID;
  end;
end;

function TQuickSearchF.SubjectCondition:String;
begin
  if SubjectID <> '' then
    Result := ' Letter.SubjectID=' + SubjectID;
end;

function TQuickSearchF.RuneveshtCondition:String;
begin
  if lblRunevesht.Caption <> '—Ê‰Ê‘  ‰œ«—œ' then
    Result := ' Letter.LetterID IN(select distinct(LetterID) from ReCommites where Type=1) '
  else
    Result := ' Letter.LetterID NOT IN(select distinct(LetterID) from ReCommites where Type=1) ';
end;

function TQuickSearchF.RecommiteCondition:String;
begin
  if Recfromid = '0' then
    Exit;

  {Ranjbar 89.11.07 ID=311}
  //Result := ' Letter.Letterid in (Select ReCommites.LetterID From ReCommites ';
  Result := ' Letter.Letterid in (Select ReCommites.LetterID From ReCommites ' ;
  //---
  if SubRec.Checked then
    {Ranjbar 89.11.07 ID=311}
    //Result := Result + ' where dbo.Is_ParentId(orgid,' + Recfromid + ')=1)'
    //·Ì”  ¬Ì œÌ “Ì— „Ã„Ê⁄Â Â«Ì ç«—  ”«“„«‰Ì „Ê—œ ‰Ÿ— —« »«“ „Ì ê—œ«‰œ Get_Subset_OrgID  «»⁄
    Result := Result + ' where OrgID in (Select Distinct OrgID From dbo.Get_Subset_OrgID(' + RecfromID + ')) )'
    //---
  else
    Result := Result + ' where OrgID = ' + RecfromID + ')';
end;

{Ranjbar 89.11.07 ID=311} //«ê— ﬂ«—»— ﬂ«—„‰œ œ»Ì—Œ«‰Â ‰»«‘œ
function TQuickSearchF.From_And_Recommite_Condition:String;
Var
   FilterString : String;
begin
   if (FromID <> '')And(RecfromID <> '0') then
   begin
       {: ﬂ«—„‰œÌ ﬂÂ ﬂ«—»— œ»Ì—Œ«‰Â ‰Ì”  »«Ìœ » Ê«‰œ ‰«„Â Â«Ì “Ì— —« „‘«ÂœÂ ‰„«Ìœ
       1 - ‰«„Â Â«ÌÌ ﬂÂ ›—” ‰œÂ Ê êÌ—‰œÂ ¬‰ ŒÊœ ﬂ«—»— «”  Ê “Ì—„Ã„Ê⁄Â Â«
       2 - ‰«„Â Â«ÌÌ ﬂÂ »Â ŒÊœ ﬂ«—»— «—Ã«⁄ “œÂ ‘œÂ «”  Ê “Ì— „Ã„Ê⁄Â Â«
       3 - ‰«„Â Â«ÌÌ ﬂÂ  Ê”ÿ ŒÊœ ﬂ«—»— À»  ‘œÂ «‰œ }
      
      FilterString := ' Le.Finalized = Letter.Finalized And Le.SecretariatID = Letter.SecretariatID ' +
                      ' And Le.Myear = Letter.Myear And Le.LetterFormat = Letter.LetterFormat '+
                      ' Order By Le.IndicatorID Desc ';

      if (SubItems.Checked) And (SubRec.Checked) then
         {//‰«„Â Â«Ì ŒÊœ ﬂ«—»— »Â Â„—«Â “Ì— „Ã„Ê⁄Â Â«
         Result := ' (Letter.FromOrgID in (Select Distinct OrgID From dbo.Get_Subset_OrgID( ' + FromID +') )' +
         //‰«„Â Â«Ì «—Ã«⁄Ì ŒÊœ ﬂ«—»— »Â„—«Â “Ì— „Ã„Ê⁄Â Â«
         ' Or Letter.LetterID in (Select Top 2000 Re.LetterID From ReCommites Re,Letter Le where Re.OrgID in '+
         ' (Select Distinct OrgID From dbo.Get_Subset_OrgID(' + RecfromID + ')) ' + ' And Re.LetterID = Le.LetterID And ' + FilterString +' )' ;}

         //‰«„Â Â«Ì ŒÊœ ﬂ«—»— »Â Â„—«Â “Ì— „Ã„Ê⁄Â Â«
         if MainForm.SecondOrgID>0 then
             Result := ' (rc.OrgID='+IntToStr(MainForm.SecondOrgID)+' OR Letter.FromOrgID='+IntToStr(MainForm.SecondOrgID)+' OR Letter.FromOrgID in (Select Distinct OrgID From #SubsetFromOrgTable )' +
             //‰«„Â Â«Ì «—Ã«⁄Ì ŒÊœ ﬂ«—»— »Â„—«Â “Ì— „Ã„Ê⁄Â Â«
//             ' Or Letter.LetterID in (Select Top 2000 Re.LetterID From ReCommites Re,Letter Le where Re.OrgID in ' +
//             ' (Select Distinct OrgID From #SubsetFromOrgTable) ' + ' And Re.LetterID = Le.LetterID And ' + FilterString + ' )'
             ' Or Letter.LetterID in (Select DISTINCT LetterID FROM #MyTmp) '
         else
             Result := ' (Letter.FromOrgID in (Select Distinct OrgID From #SubsetFromOrgTable )' +
//             //‰«„Â Â«Ì «—Ã«⁄Ì ŒÊœ ﬂ«—»— »Â„—«Â “Ì— „Ã„Ê⁄Â Â«
//             ' Or Letter.LetterID in (Select Top 2000 Re.LetterID From ReCommites Re,Letter Le where Re.OrgID in ' +
//             ' (Select Distinct OrgID From #SubsetFromOrgTable) ' + ' And Re.LetterID = Le.LetterID And ' + FilterString + ' )' ;
             ' Or Letter.LetterID in (Select DISTINCT LetterID FROM #MyTmp) ';

      if Not(SubItems.Checked) And not(SubRec.Checked) then
         {   //›ﬁÿ ‰«„Â Â«Ì ŒÊœ ﬂ«—»— »œÊ‰ “Ì— „Ã„Ê⁄Â
         Result := ' (Letter.FromOrgID = ' + FromID +
            //›ﬁÿ ‰«„Â Â«Ì «—Ã«⁄Ì ŒÊœ ﬂ«—»— »œÊ‰ “Ì— „Ã„Ê⁄Â
            ' Or Letter.LetterID in (Select Top 2000 Re.LetterID From ReCommites Re,Letter Le where Re.OrgID = ' + RecfromID +
                 ' And Re.LetterID = Le.LetterID And ' + FilterString + ')';}

            //›ﬁÿ ‰«„Â Â«Ì ŒÊœ ﬂ«—»— »œÊ‰ “Ì— „Ã„Ê⁄Â
         Result := ' (Letter.FromOrgID = ' + FromID +
            //›ﬁÿ ‰«„Â Â«Ì «—Ã«⁄Ì ŒÊœ ﬂ«—»— »œÊ‰ “Ì— „Ã„Ê⁄Â
            ' Or Letter.LetterID in (Select Top 2000 Re.LetterID From ReCommites Re,Letter Le where Re.OrgID = ' + RecfromID +
                 ' And Re.LetterID = Le.LetterID And ' + FilterString + ' ORDER BY Re.LetterID DESC)';

      if (SubItems.Checked) And not(SubRec.Checked) then
         {   //‰«„Â Â«Ì ŒÊœ ﬂ«—»— »Â Â„—«Â “Ì— „Ã„Ê⁄Â Â«
         Result := ' (Letter.FromOrgID in (Select Distinct OrgID From dbo.Get_Subset_OrgID( ' + FromID +') )' +
            //›ﬁÿ ‰«„Â Â«Ì «—Ã«⁄Ì ŒÊœ ﬂ«—»— »œÊ‰ “Ì— „Ã„Ê⁄Â
            ' Or Letter.LetterID in (Select Top 2000 Re.LetterID From ReCommites Re,Letter Le where Re.OrgID = ' + RecfromID +
                  ' And Re.LetterID = Le.LetterID And ' + FilterString + ')';}

               //‰«„Â Â«Ì ŒÊœ ﬂ«—»— »Â Â„—«Â “Ì— „Ã„Ê⁄Â Â«
         if MainForm.SecondOrgID>0 then
             Result := ' (rc.OrgID='+IntToStr(MainForm.SecondOrgID)+' OR Letter.FromOrgID='+IntToStr(MainForm.SecondOrgID)+' OR Letter.FromOrgID in (Select Distinct OrgID From #SubsetFromOrgTable )' +
                //›ﬁÿ ‰«„Â Â«Ì «—Ã«⁄Ì ŒÊœ ﬂ«—»— »œÊ‰ “Ì— „Ã„Ê⁄Â
                ' Or Letter.LetterID in (Select Top 2000 Re.LetterID From ReCommites Re,Letter Le where Re.OrgID = ' + RecfromID +
                      ' And Re.LetterID = Le.LetterID And ' + FilterString + ' ORDER BY Re.LetterID DESC)'
         else
             Result := ' (Letter.FromOrgID in (Select Distinct OrgID From #SubsetFromOrgTable )' +
                //›ﬁÿ ‰«„Â Â«Ì «—Ã«⁄Ì ŒÊœ ﬂ«—»— »œÊ‰ “Ì— „Ã„Ê⁄Â
                ' Or Letter.LetterID in (Select Top 2000 Re.LetterID From ReCommites Re,Letter Le where Re.OrgID = ' + RecfromID +
                      ' And Re.LetterID = Le.LetterID And ' + FilterString + '  ORDER BY Re.LetterID DESC)';

      if not(SubItems.Checked) And (SubRec.Checked) then
         {   //›ﬁÿ ‰«„Â Â«Ì ŒÊœ ﬂ«—»— »œÊ‰ “Ì— „Ã„Ê⁄Â
         Result := ' (Letter.FromOrgID = ' + FromID +
            //‰«„Â Â«Ì «—Ã«⁄Ì ŒÊœ ﬂ«—»— »Â„—«Â “Ì— „Ã„Ê⁄Â Â«
            ' Or Letter.LetterID in (Select Top 2000 Re.LetterID From ReCommites Re , Letter Le where OrgID in '+
            ' (Select Distinct OrgID From dbo.Get_Subset_OrgID(' + RecfromID + ')) ' + ' And Re.LetterID = Le.LetterID And ' + FilterString +' )';}

            //›ﬁÿ ‰«„Â Â«Ì ŒÊœ ﬂ«—»— »œÊ‰ “Ì— „Ã„Ê⁄Â
         Result := ' (Letter.FromOrgID = ' + FromID +
            //‰«„Â Â«Ì «—Ã«⁄Ì ŒÊœ ﬂ«—»— »Â„—«Â “Ì— „Ã„Ê⁄Â Â«
            ' Or Letter.LetterID in (Select Top 2000 Re.LetterID From ReCommites Re , Letter Le where OrgID in ' +
            ' (Select Distinct OrgID From #SubsetFromOrgTable) ' + ' And Re.LetterID = Le.LetterID And ' + FilterString + '  ORDER BY Re.LetterID DESC)';

      //»Â «÷«›Â ‰«„Â Â«Ì À» Ì ŒÊœ ﬂ«—»—
      Result := Result + ' Or Letter.LetterID in (Select Top 2000 LetterID From Letter Where UserID = ' + IntToStr(_UserID) + ' ORDER BY LetterID DESC) )';
   end;
end;
//---

procedure TQuickSearchF.ACloseExecute(Sender: TObject);
begin
   inherited;
   Close;
end;

procedure TQuickSearchF.ANewSearchExecute(Sender: TObject); //œﬂ„Â ÃœÌœ
begin
   inherited;
   Indicator.Text:='';
   EdtIncommingNO.Text:='';
   MERegFromDate.Text:='';
   MERegToDate.Text:='';
   ToStaffer.Text:='';
   Memo.Text:='';
   fromid:='';
   recfromid:='0';
   OrgEdit.Text:='';
   RecommiteOrgEdt.Text:='';
   EdSubject.Text:='';
   chkRunevesht.Checked := false;
   lblRunevesht.Enabled := false;
   if not _IsSecretariatStaffer then //«ê— ﬂ«—„‰œ œ»Ì—Œ«‰Â ‰»Êœ
   begin
      fromid:=IntToStr(dm.DefaultRFromOrgId);
      Subjectid:='';
      
      {Ranjbar 89.11.07 ID=311}
      //Dm.FromOrganizations.Locate('ID',Dm.DefaultRFromOrgId,[]);
      FromID := IntToStr(_UserFromOrgID);
      Dm.FromOrganizations.Locate('ID',FromID,[]);
      OrgEdit.Text := dm.FromOrganizationsTitle.AsString;
      //---
      RecfromID := IntToStr(_UserFromOrgID);
      Dm.FromOrganizations.Locate('ID',RecfromID,[]);
      RecommiteOrgEdt.Text := Dm.FromOrganizationsTitle.AsString;
   end;

   RetroactionNo.Text:='';
   FollowEdit.Text:='';
   UserMemo.Text:='';
   CenterNo.Text:='';
end;

procedure TQuickSearchF.FormShow(Sender: TObject);
begin
   inherited;
   ANewSearch.Execute; //ﬂ·Ìﬂ œﬂ„Â ÃœÌœ
   Indicator.SetFocus;
   Initialize;
   Label5.Caption := Dm.UserMemoDisplay;
   if GetUserSetting('MainFormPnladvancedMinimize') then
     PnlAdvanced.Minimized := True ;

   if GetUserSetting('MainFormPnlSubjectMinimize') then
     PnlSubject.Minimized := True ;

   {
   AdvancedSearch.Height := 208;
   AdvancedSearch.Width := 206;
   SubjectPanel.Height := 48;
   SubjectPanel.Width := 206;

   Panel2.Height := 20;
   Panel2.Width := 206;
   Panel3.Height := 41;
   Panel3.Width := 206;

   Panel1.Height := 35;
   Panel1.Width := 206;
   }
end;

procedure TQuickSearchF.SpeedButton1Click(Sender: TObject);
begin
   inherited;
   MainForm.DisplayMode:=notany;
end;

function TQuickSearchF.IndicatorCondition:String;
var s:string;
    FI,Ti:integer;
begin
   result:='';
   s:=trim(Indicator.Text);
   
   if dm.isIndicator(s,FI,Ti) then
     result:='(IndicatorID>='+inttostr(FI)+' and IndicatorID<='+IntToStr(TI)+')';
end;

function TQuickSearchF.FollowCondition:String;
var s:string;
begin
   //Edit Sanaye 950404
   //«ÌÃ«œ Ã” ÃÊ »—«Ì ⁄ÿ› Ê ÅÌ—Ê
   Result:='';
   S := Trim(ReplaceKaf( FollowEdit.Text));
   if S <> '' then
   begin
      if rdAnidicatorNo.Checked then
        Result := ' (Letter.LetterID IN (	SELECT FRL.LetterID '+
		  					  '                      	FROM dbo.Follow_Retroaction_Letter FRL INNER JOIN dbo.Letter L ON L.LetterID = FRL.FR_LetterID '+
                  '       								WHERE FR_Kind = 0  AND L.IndicatorID LIKE ''%'+FollowEdit.Text+'%''))'
      else if  rdLetterNo.Checked then
        Result := ' (Letter.LetterID IN (	SELECT FRL.LetterID '+
		  					  '                      	FROM dbo.Follow_Retroaction_Letter FRL INNER JOIN dbo.Letter L ON L.LetterID = FRL.FR_LetterID '+
                  '       								WHERE FR_Kind = 0  AND L.IncommingNO LIKE ''%'+FollowEdit.Text+'%''))';
    end;
   //End Sanaye...
end;

function TQuickSearchF.RetroCondition:String;
var S:string;
begin
   //Edit Sanaye 950404
   //«ÌÃ«œ Ã” ÃÊ »—«Ì ⁄ÿ› Ê ÅÌ—Ê
   Result := '';
   S := Trim(ReplaceKaf( RetroactionNo.Text));
   if S <> '' then
   begin
      if rdAnidicatorNo.Checked then
        Result := ' (Letter.LetterID IN (	SELECT FRL.LetterID '+
	  						  '                      	FROM dbo.Follow_Retroaction_Letter FRL INNER JOIN dbo.Letter L ON L.LetterID = FRL.FR_LetterID '+
                  '       								WHERE FR_Kind = 1  AND L.IndicatorID LIKE ''%'+RetroactionNo.Text+'%''))'
      else if  rdLetterNo.Checked then
        Result := ' (Letter.LetterID IN (	SELECT FRL.LetterID '+
	  						  '                      	FROM dbo.Follow_Retroaction_Letter FRL INNER JOIN dbo.Letter L ON L.LetterID = FRL.FR_LetterID '+
                  '       								WHERE FR_Kind = 1  AND L.IncommingNO LIKE ''%'+RetroactionNo.Text+'%''))'
   end;
   //End Sanaye...
end;

procedure TQuickSearchF.Refresh;
var items: TStrings;
    i: byte;
begin
   Initialize;
   items:=TStringList.Create;
   condition:='';
   with items do
   begin
      clear;
      Add(CenterNoCondition);
      Add(NoCondition);

      {Ranjbar 89.11.07 ID=311}
      //Add(FromCondition);
      //Add(RecommiteCondition);
      if _IsSecretariatStaffer then //ﬂ«—„‰œ œ»Ì—Œ«‰Â «” 
      begin
         Add(FromCondition);
         Add(RecommiteCondition);
      end
         else
            begin //ﬂ«—„‰œ œ»Ì—Œ«‰Â ‰Ì” 
               Add(From_And_Recommite_Condition);
            end;
      //---
      Add(IndicatorCondition);
      Add(DateCondition);  // ⁄ÌÌ‰ ‘—ÿ »—«Ì  «—ÌŒ À»  ‰«„Â Ê  «—ÌŒ Ê—Êœ ‰«„Â
      Add(FollowCondition);
      Add(RetroCondition);
      Add(SenderCondition);
      Add(dm.MemoCondition(ReplaceKaf( memo.Text),'Memo'));
      Add(dm.MemoCondition(ReplaceKaf( UserMemo.Text),'UserMemo'));
      Add(SubjectCondition);
      if chkRunevesht.Checked then
         Add(RuneveshtCondition);
      for i:=0 to Count-1 do
         if items[i]<>'' then
            if Condition = '' then
               Condition := items[i]
            else
               Condition := Condition +' And '+items[i];
   end;

   MainForm.Where := Condition;
end;

procedure TQuickSearchF.Initialize;
begin

   Case MainForm.Letter_Type of
      1: TitleLabel.Caption := 'Ã” ÃÊ œ— ‰«„Â Â«Ì Ê«—œÂ';
      2: TitleLabel.Caption := 'Ã” ÃÊ œ— ‰«„Â Â«Ì ’«œ—Â';
      0: TitleLabel.Caption := 'Ã” ÃÊ œ—Â„Â ‰«„Â Â«';
   end;

   onlSearch.Title :=  TitleLabel.Caption ;

   {Ranjbar 89.10.29 ID=285}
   {if isIncommingDate.Checked then
      DateF:='incommingdate'
   else
      DateF:='Registrationdate';}
end;

procedure TQuickSearchF.SpeedButton2Click(Sender: TObject);
begin
   inherited;
   FromOrgForm := TFromOrgForm.Create(Application);
   FromOrgForm.outerOrg.Checked := false;
   FromOrgForm.ShowModal;
   if FromOrgForm.done then
   begin
      fromid:=IntToStr(_ResultOrgID);
      OrgEdit.Text:=_ResultOrgTitle;
   end;
end;

procedure TQuickSearchF.FormCreate(Sender: TObject);
begin
   inherited;
   FromID := IntToStr(Dm.DefaultRFromOrgId);
   RecfromID := '0';

   {Ranjbar 89.11.07 ID=311}
   (*if not _IsSecretariatStaffer then //«ê— ﬂ«—„‰œ œ»Ì—Œ«‰Â ‰»Êœ
      RecfromID := IntToStr(_UserFromOrgID);
   SpeedButton3.Enabled := _IsSecretariatStaffer;
   {Ranjbar 89.11.03 ID=291}
   SpeedButton2.Enabled := _IsSecretariatStaffer;
   //---
   Dm.FromOrganizations.Locate('ID',Dm.DefaultRFromOrgId,[]);
   OrgEdit.Text := Dm.FromOrganizationsTitle.AsString;*)

   if not _IsSecretariatStaffer then //«ê— ﬂ«—„‰œ œ»Ì—Œ«‰Â ‰»Êœ
   begin
      RecfromID := IntToStr(_UserFromOrgID);
      SpeedButton3.Enabled := False;
      SpeedButton2.Enabled := False;
      FromID := IntToStr(_UserFromOrgID);
      Dm.FromOrganizations.Locate('ID',FromID,[]);
      OrgEdit.Text := Dm.FromOrganizationsTitle.AsString;
   end;
   //---
   
   //SubjectPanel.YCheckBox.Checked := True;
   //AdvancedSearch.YCheckBox.Checked := True;

end;

procedure TQuickSearchF.OrgEditChange(Sender: TObject);
begin
   inherited;
   if Trim(OrgEdit.Text) = '' then
      FromID := '';
end;

procedure TQuickSearchF.SpeedButton3Click(Sender: TObject);
begin
   inherited;
   FromOrgForm := TFromOrgForm.Create(Application);
   FromOrgForm.outerOrg.Checked := False;
   FromOrgForm.ShowModal;
   if FromOrgForm.done then
   begin
      Recfromid := IntToStr(_ResultOrgID);
      RecommiteOrgEdt.Text := _ResultOrgTitle;
   end;
end;

procedure TQuickSearchF.SearchClick(Sender: TObject);
begin
  inherited;
  //EdtIncommingNO.Text:=StringReplace(EdtIncommingNO.Text,' ','',[rfReplaceAll]);
  if not ChBoIncommingNO.Checked then
  begin
    if EdtIncommingNO.BiDiMode = bdLeftToRight then
      EdtIncommingNO.BiDiMode := bdRightToLeft;
  //DBEIncommingNO.Text := Keyboard_TypeWithDivider(DBEIncommingNO.Text,Key);
  end;
  MainForm.tmRefereshQuery.Enabled := False;
  tmrRefreshQueryMainForm.Enabled := True;
  Refresh;

end;

procedure TQuickSearchF.BitBtn3Click(Sender: TObject);
begin
   inherited;
   ANewSearch.Execute;
end;

procedure TQuickSearchF.RetroactionNo1KeyPress(Sender: TObject;var Key: Char);
begin
   inherited;
   {Ranjbar 89.09.02 ID=230}
   //«„ﬂ«‰  «ÌÅ Õ—Ê›Ì „À·     » . 55 - 12_125 . Ã / » / «·›
   //TEdit(Sender).Text := Keyboard_TypeWithDivider(TEdit(Sender).Text , Key);
   if not ChBoIncommingNO.Checked then
   begin
      if EdtIncommingNO.BiDiMode = bdLeftToRight then
         EdtIncommingNO.BiDiMode := bdRightToLeft;
      EdtIncommingNO.Text := Keyboard_TypeWithDivider(EdtIncommingNO.Text,Key);
   end;
   //---
end;

procedure TQuickSearchF.EdtIncommingNOKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
   inherited;
   if Key = 13 then
      Refresh;
end;

procedure TQuickSearchF.SpeedButton4Click(Sender: TObject);
begin
   inherited;
   //SearchAdoDataSet := TSearchAdoDataSet.Create(Self);
   Application.CreateForm(TSearchAdoDataSet,SearchAdoDataSet);
      SearchAdoDataSet.SearchDataSet := False;
      SearchAdoDataSet.TableName := 'Subject';
      SearchAdoDataSet.CodeField := 'SubjectID';
      SearchAdoDataSet.TitleField := 'SubjectTitle';
      SearchAdoDataSet.SearchF.Connection := Dm.YeganehConnection;
      SearchAdoDataSet.ShowModal;
      if Dm.SearchResult <> -1 then
         SubjectID := IntToStr(Dm.SearchResult);
      EdSubject.Text := SearchAdoDataSet.SearchF.FieldValues[SearchAdoDataSet.TitleField];
   SearchAdoDataSet.Free;
end;

procedure TQuickSearchF.EdSubjectChange(Sender: TObject);
begin
   inherited;
   if Trim(EdSubject.Text) = '' then
      SubjectId := '';
end;

procedure TQuickSearchF.ChBoIncommingNOClick(Sender: TObject);
begin
   inherited;
   EdtIncommingNO.SetFocus;
end;

procedure TQuickSearchF.MERegFromDateEnter(Sender: TObject);
begin
   inherited;
   TEditEnter(Sender);
   if TMaskEdit(Sender).Text = '    /  /  ' then
      TMaskEdit(Sender).SelStart := 0;
end;

procedure TQuickSearchF.MERegToDateEnter(Sender: TObject);
begin
   inherited;
   TMaskEdit(Sender).SelStart := 0;
   TEditEnter(Sender);
   if TMaskEdit(Sender).Text = '    /  /  ' then
      TMaskEdit(Sender).SelStart := 0;
end;

procedure TQuickSearchF.MERegFromDateDblClick(Sender: TObject);
begin
  inherited;
  TMaskEdit(Sender).SelectAll;
end;

procedure TQuickSearchF.MERegToDateDblClick(Sender: TObject);
begin
  inherited;
  TMaskEdit(Sender).SelectAll;
end;

procedure TQuickSearchF.MERegFromDateMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   inherited;
   if TMaskEdit(Sender).Text = '    /  /  ' then
      TMaskEdit(Sender).SelStart := 0;
end;

procedure TQuickSearchF.MERegToDateMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   inherited;
   if TMaskEdit(Sender).Text = '    /  /  ' then
      TMaskEdit(Sender).SelStart := 0;
end;

procedure TQuickSearchF.chkRuneveshtClick(Sender: TObject);
begin
  inherited;
  lblRunevesht.Enabled := chkRunevesht.Checked;
end;

procedure TQuickSearchF.lblRuneveshtClick(Sender: TObject);
begin
  inherited;
   if lblRunevesht.Caption <> '—Ê‰Ê‘  ‰œ«—œ' then
      lblRunevesht.Caption := '—Ê‰Ê‘  ‰œ«—œ'
   else
      lblRunevesht.Caption := '—Ê‰Ê‘  œ«—œ';
end;

procedure TQuickSearchF.EdtIncommingNOExit(Sender: TObject);
begin
  inherited;
  EdtIncommingNO.Color := clWhite;
  EdtIncommingNO.Font.Style:=[];
  
  if not ChBoIncommingNO.Checked then
  begin
    if EdtIncommingNO.BiDiMode = bdLeftToRight then
       EdtIncommingNO.BiDiMode := bdRightToLeft;
   // DBEIncommingNO.Text := Keyboard_TypeWithDivider(DBEIncommingNO.Text,Key);
  end;

end;

procedure TQuickSearchF.tmrRefreshQueryMainFormTimer(Sender: TObject);
begin
  inherited;
 if tmrRefreshQueryMainForm.Interval = 10000 then
  begin
   MainForm.tmRefereshQuery.Enabled := True;
   tmrRefreshQueryMainForm.Enabled := False;
  end;
end;

procedure TQuickSearchF.onlSearchAfterClose(Sender: TObject);
begin
  inherited;
  MainForm.DisplayMode := notany;
  if  PnlAdvanced.Minimized then
    SetUserSetting('MainFormPnladvancedMinimize', 1)
  else SetUserSetting('MainFormPnladvancedMinimize', 0) ;

  if  PnlSubject.Minimized then
    SetUserSetting('MainFormPnlSubjectMinimize', 1)
  else SetUserSetting('MainFormPnlSubjectMinimize', 0) ;
end;

procedure TQuickSearchF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;


//
end;

end.
