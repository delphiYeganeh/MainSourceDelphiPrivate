 unit QuickSearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, ADODB,
  ActnList, ActnMan, jpeg, Mask, DBCtrls, Menus, ComCtrls, YDbgrid,
  ExtActns, xpWindow, xpBitBtn, YCheckGroupBox;

type
  TQuickSearchF = class(TMBaseForm)
    ActionList1: TActionList;
    ANewSearch: TAction;
    ASearch: TAction;
    Panel1: TPanel;
    Search: TxpBitBtn;
    BitBtn3: TxpBitBtn;
    Panel2: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    SenderTitle: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    TitleLabel: TLabel;
    SpeedButton1: TSpeedButton;
    Label7: TLabel;
    Label13: TLabel;
    no: TEdit;
    Indicator: TEdit;
    Memo: TEdit;
    date: TEdit;
    ToStaffer: TEdit;
    UserMemo: TEdit;
    CenterNo: TEdit;
    isIncommingDate: TCheckBox;
    Image1: TImage;
    YCheckGroupBox1: TYCheckGroupBox;
    Label3: TLabel;
    SpeedButton2: TSpeedButton;
    Label8: TLabel;
    SpeedButton3: TSpeedButton;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit1: TEdit;
    SubItems: TCheckBox;
    Edit2: TEdit;
    SubRec: TCheckBox;
    RetroactionNo: TEdit;
    FollowEdit: TEdit;
    cmbSearch_In_All: TCheckBox;
    function NoCondition:String;
    function DateCondition:String;
    function CenterNoCondition:String;
    function FromCondition:String;
    function RecommiteCondition:String;
    function SenderCondition:String;
    procedure ACloseExecute(Sender: TObject);
    procedure ANewSearchExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Initialize;
    procedure Refresh;
    function IndicatorCondition:String;
    procedure IndicatorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    function FollowCondition:String;
    function RetroCondition:String;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SearchClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    Condition :String;
    fromid:String;
    Recfromid:String;
{ Public declarations }
  end;
var
  QuickSearchF: TQuickSearchF;

implementation

uses EnteredLetterInputF, ExitedLetterInputF, yShamsiDate, UMain,
   dmu, FromOrgU;

{$R *.dfm}
var
  DateF:string;


function TQuickSearchF.NoCondition:String;
var s: string;
begin
Result:='';
s:=trim(ReplaceKaf( No.text));
if copy(s,1,2)='‘:' then Delete(s,1,2);
if s<>'' then
   if MainForm.Letter_Type<>2 then
     result:='(incommingno like ''%'+s+'%'')'
    else
     Result:='(indicatorID='+s+')';


end;

function TQuickSearchF.DateCondition:String;
var FDate,TDate:string;
s:string;
begin
 s:=trim(date.Text);
 Result:='';
 if isDate(dm.today,s,FDate,TDate) then
  begin
     Result:='('+DateF+'<='''+TDate+''') and  ('+DateF+'>='''+FDate+''')';
  end;
   if Result<>'' then Result:='('+Result+')';end;

function TQuickSearchF.CenterNoCondition:String;
begin
if trim(CenterNo.text)<> '' then
 result:='(centerno like ''%'+trim(ReplaceKaf( CenterNo.text))+'%'')'
else
 Result:=''
end;

function TQuickSearchF.SenderCondition:String;
var s: string;
begin
 Result:='';
 s:=YeganehTrim(ReplaceKaf( ToStaffer.Text));
 if s<>'' then
  Result:='(ToStaffer like ''%'+s+'%'' or Toorgid in (select id from Fromorganizations where title like ''%'+s+'%'' ))';
end;

function TQuickSearchF.FromCondition:String;
begin
 if fromid <>'' then
  if SubItems.Checked then
    Result:=' dbo.Is_ParentId( letter.FromOrgID,'+Fromid+')=1'
  else
    Result:=' Letter.FromOrgID='+Fromid;   

end;

function TQuickSearchF.RecommiteCondition:String;
begin
if Recfromid='0' then exit;
result:=' Letter.Letterid in (SELECT ReCommites.LetterID FROM ReCommites ';
if SubRec.Checked then
  Result:=Result+' where  dbo.Is_ParentId(orgid,'+Recfromid+')=1)'
 else
  Result:=Result+' where  orgid='+Recfromid+')'


end;

procedure TQuickSearchF.ACloseExecute(Sender: TObject);
begin
  inherited;
close;
end;

procedure TQuickSearchF.ANewSearchExecute(Sender: TObject);
begin
  inherited;
  Indicator.Text:='';
  no.Text:='';
  date.Text:='';
  ToStaffer.Text:='';
  Memo.Text:='';
  fromid:=''; 
  recfromid:='0';
  Edit1.Text:='';
  edit2.Text:='';
 if not _IsSecretariatStaffer then
    begin
       recfromid:=IntToStr(_UserFromOrgID);
       fromid:=IntToStr(dm.DefaultRFromOrgId);
       dm.FromOrganizations.Locate('id',dm.DefaultRFromOrgId,[]);
       Edit1.Text:=dm.FromOrganizationsTitle.AsString;
    end;


  RetroactionNo.Text:='';
  FollowEdit.Text:='';
  UserMemo.Text:='';
  CenterNo.Text:='';
end;

procedure TQuickSearchF.FormShow(Sender: TObject);
begin
  inherited;
 ANewSearch.Execute;
 Indicator.SetFocus;
 Initialize;
 Label5.Caption:=dm.UserMem;
 
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
result:='';
s:=trim(ReplaceKaf( FollowEdit.Text));
if s<>'' then
  result:='(FollowLetterNo like ''%'+FollowEdit.text+'%'')';
end;

function TQuickSearchF.RetroCondition:String;
var s:string;
begin
result:='';
s:=trim(ReplaceKaf( RetroactionNo.Text));
if s<>'' then
  result:='(RetroactionNo like ''%'+RetroactionNo.text+'%'')';
end;

procedure TQuickSearchF.Refresh;
var    items: TStrings;
       i    : byte;
begin
  Initialize;
  items:=TStringList.Create;
  condition:='';
 with items do
  begin
     clear;
     Add(CenterNoCondition);
     Add(NoCondition);
     Add(FromCondition);
     Add(RecommiteCondition);
     Add(IndicatorCondition);
     Add(DateCondition);
     Add(FollowCondition);
     Add(RetroCondition);
     Add(SenderCondition);
     Add(dm.MemoCondition(ReplaceKaf( memo.Text),'Memo'));
     Add(dm.MemoCondition(ReplaceKaf( UserMemo.Text),'UserMemo'));
     for i:=0 to Count-1 do
       if  items[i]<>'' then
        if Condition='' then Condition:=items[i]
        else  condition:=condition+' and '+items[i];
  end;
  MainForm.Where:=Condition;
end;

procedure TQuickSearchF.Initialize;
begin

  case MainForm.Letter_Type of
1:
  TitleLabel.Caption:='Ã” ÃÊ œ— ‰«„Â Â«Ì Ê«—œÂ';
2:
  TitleLabel.Caption:='Ã” ÃÊ œ— ‰«„Â Â«Ì ’«œ—Â';
0:
  TitleLabel.Caption:='Ã” ÃÊ œ—Â„Â ‰«„Â Â«';
end;

if isIncommingDate.Checked then
  DateF:='incommingdate'
 else
  DateF:='Registrationdate';
end;
procedure TQuickSearchF.IndicatorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key =13 then
 Refresh;
end;

procedure TQuickSearchF.SpeedButton2Click(Sender: TObject);
begin
  inherited;
   FromOrgForm:=TFromOrgForm.Create(Application);
   FromOrgForm.outerOrg.Checked:=false;
   FromOrgForm.ShowModal;
   if FromOrgForm.done then
    begin
     fromid:=IntToStr(_ResultOrgID);
     Edit1.Text:=_ResultOrgTitle;
    end;

end;

procedure TQuickSearchF.FormCreate(Sender: TObject);
begin
  inherited;
     fromid:=IntToStr(dm.DefaultRFromOrgId);
     recfromid:='0';

 if not _IsSecretariatStaffer then
     recfromid:=IntToStr(_UserFromOrgID);

     SpeedButton3.Enabled:=_IsSecretariatStaffer ;

     dm.FromOrganizations.Locate('id',dm.DefaultRFromOrgId,[]);
     Edit1.Text:=dm.FromOrganizationsTitle.AsString;

  

end;

procedure TQuickSearchF.Edit1Change(Sender: TObject);
begin
  inherited;
if trim(edit1.Text)='' then
  fromid:=''; 
end;

procedure TQuickSearchF.SpeedButton3Click(Sender: TObject);
begin
  inherited;
   FromOrgForm:=TFromOrgForm.Create(Application);
   FromOrgForm.outerOrg.Checked:=false;
   FromOrgForm.ShowModal;
   if FromOrgForm.done then
    begin
     recfromid:=IntToStr(_ResultOrgID);
     Edit2.Text:=_ResultOrgTitle;
    end;

end;

procedure TQuickSearchF.SearchClick(Sender: TObject);
begin
  inherited;
  MainForm.CBArchiveStatus.KeyValue:=0;
Refresh;
end;

procedure TQuickSearchF.BitBtn3Click(Sender: TObject);
begin
  inherited;
ANewSearch.Execute;
end;

end.
