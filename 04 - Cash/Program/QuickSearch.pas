 unit QuickSearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, ADODB,
  ActnList, ActnMan, jpeg, Mask, DBCtrls, Menus, ComCtrls, YDbgrid,
  ExtActns, xpWindow, xpBitBtn;

type
  TQuickSearchF = class(TMBaseForm)
    Label2: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    SenderTitle: TLabel;
    Label4: TLabel;
    LUserMemo1: TLabel;
    no: TEdit;
    Search: TBitBtn;
    Indicator: TEdit;
    Memo: TEdit;
    BitBtn3: TBitBtn;
    date: TEdit;
    ToStaffer: TEdit;
    UserMemo1: TEdit;
    Image1: TImage;
    TitleLabel: TLabel;
    ActionList1: TActionList;
    ANewSearch: TAction;
    SpeedButton1: TSpeedButton;
    ASearch: TAction;
    LUserMemo2: TLabel;
    UserMemo2: TEdit;
    LUserMemo3: TLabel;
    UserMemo3: TEdit;
    Label3: TLabel;
    RentStatus: TComboBox;
    Label14: TLabel;
    Label15: TLabel;
    Indicator2: TEdit;
    function NoCondition:String;
    function DateCondition:String;
    function SenderCondition:String;
    procedure ACloseExecute(Sender: TObject);
    procedure ANewSearchExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ASearchExecute(Sender: TObject);
    function IndicatorCondition:String;
    procedure IndicatorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SearchClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    function RentCondition:String;
    procedure IndicatorExit(Sender: TObject);
  private
        procedure Initialize;
    procedure Refresh;
  public
    Condition :String;
{ Public declarations }
  end;
var
  QuickSearchF: TQuickSearchF;

implementation

uses UAddDocument, yShamsiDate, UMain,
     dmu, FromOrgU;

{$R *.dfm}
var
  DateF:string;

function TQuickSearchF.NoCondition:String;
var s: string;
begin
Result:='';
s:=ReplaceKaf(trim(No.text));
if copy(s,1,2)='Ô:' then Delete(s,1,2);
if s<>'' then
 result:='(replace(incommingno,'' '','''') like ''%'+replace(s,' ','')+'%'')'


end;

function TQuickSearchF.DateCondition:String;
var FDate,TDate:string;
s:string;
begin
 s:=trim(date.Text);
 Result:='';
 if isDate(_Today,s,FDate,TDate) then
  Result:='('+DateF+'<='''+TDate+''') and  ('+DateF+'>='''+FDate+''')';
   if Result<>'' then Result:='('+Result+')';
end;

function TQuickSearchF.SenderCondition:String;
var s: string;
begin
 Result:='';
 s:=ReplaceKaf(YeganehTrim(ToStaffer.Text));
 if s<>'' then
  Result:='(Toorgid in (select id from Fromorganizations where title like ''%'+s+'%''))';
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
  //Ranjbar Var5
  Indicator2.Text:='';
  //---
  no.Text:='';
  date.Text:='';
  ToStaffer.Text:='';
  Memo.Text:='';
  dm.FromOrganizations.Locate('id',dm.DefaultRFromOrgId,[]);
  UserMemo1.Text:='';
  UserMemo2.Text:='';
  UserMemo3.Text:='';
  RentStatus.ItemIndex:=0;
  //Ranjbar Var5
  Indicator.SetFocus;
  //---
end;

procedure TQuickSearchF.FormShow(Sender: TObject);
begin
  inherited;
 ANewSearch.Execute;
 Indicator.SetFocus;
 Initialize;
 LUserMemo1.Caption:=dm.UserMemo1;
 LUserMemo2.Caption:=dm.UserMemo2;
 LUserMemo3.Caption:=dm.UserMemo3;
end;

procedure TQuickSearchF.SpeedButton1Click(Sender: TObject);
begin
   inherited;
   MainForm.DisplayMode := notany;
end;


function TQuickSearchF.IndicatorCondition:String;
var
   S1,S2 :String;
   FI,Ti:word;
begin
   Result:='';
   S1 := Trim(Indicator.Text);
   {Ranjbar Ver5}
   {if dm.isIndicator(s1,FI,Ti) then
      Result:='(IndicatorID>='+inttostr(FI)+' and IndicatorID<='+IntToStr(TI)+')';}
   S2 := Trim(Indicator2.Text);   
   if S1 = '' then
      Exit;

   if Trim(S2) = '' then
   begin
      S2 := Trim(S1);
      Indicator2.Text := S2
   end;
   Result:='(IndicatorID Between '+ S1 +' And '+ S2 +')';
   //---
end;

function TQuickSearchF.RentCondition:String;
begin
   Result:='';
   if RentStatus.ItemIndex>0 then
      Result:='(dbo.RentStatus(Letter.LetterID,' + QuotedStr(_Today)+')='+IntToStr(RentStatus.ItemIndex)+' )';
end;

Procedure TQuickSearchF.Refresh;
var
   items: TStrings;
   i : byte;
begin
  Initialize;
  items:=TStringList.Create;
  condition:='';
  with items do
  begin
     clear;
     Add(NoCondition);
     Add(RentCondition);
     Add(IndicatorCondition);
     Add(DateCondition);
     Add(SenderCondition);
     Add(dm.MemoCondition(ReplaceKaf(memo.Text),'Memo'));
     Add(dm.MemoCondition(ReplaceKaf(UserMemo1.Text),'UserMemo'));
     Add(dm.MemoCondition(ReplaceKaf(UserMemo2.Text),'UserMemo1'));
     Add(dm.MemoCondition(ReplaceKaf(UserMemo3.Text),'UserMemo2'));
     for i:=0 to Count-1 do
       if  items[i]<>'' then
        if Condition='' then Condition:=items[i]
        else  condition:=condition+' and '+items[i];
  end;
  MainForm.Where:=Condition;
end;

procedure TQuickSearchF.Initialize;
begin
   DateF := 'RegistrationDate';
end;

procedure TQuickSearchF.ASearchExecute(Sender: TObject);
begin
   inherited;
   Refresh;
end;

procedure TQuickSearchF.IndicatorKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
   inherited;
   if Key =13 then
      Refresh;
end;

procedure TQuickSearchF.SearchClick(Sender: TObject);
begin
   inherited;
   Refresh;
end;

procedure TQuickSearchF.BitBtn3Click(Sender: TObject);
begin
   inherited;
   ANewSearch.Execute;
end;

procedure TQuickSearchF.IndicatorExit(Sender: TObject);
begin
  inherited;
  //Ranjbar Var6
  MBaseForm.TEditExit(Sender);
  if Trim(Indicator2.Text) = '' then
     Indicator2.Text := Trim(Indicator.Text)
  //---   
end;

end.
