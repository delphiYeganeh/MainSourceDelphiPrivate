 unit QuickSearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, ADODB,
  ActnList, ActnMan, jpeg, Mask, DBCtrls, Menus, ComCtrls, YDbgrid,dateutils,
  DBTreeView, xpBitBtn, xpWindow, ExtActns, ImgList ;

type
  TQuickSearchF = class(TMBaseForm)
    DGet_UserSecretariat_Tree: TDataSource;
    Get_UserSecretariat_Tree: TADOStoredProc;
    Get_UserSecretariat_TreeID: TAutoIncField;
    Get_UserSecretariat_TreeSecID: TIntegerField;
    Get_UserSecretariat_TreeParentID: TIntegerField;
    Get_UserSecretariat_TreeProceed: TIntegerField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    no: TEdit;
    Search: TxpBitBtn;
    Memo: TEdit;
    date: TComboBox;
    RadioGroup1: TRadioGroup;
    Get_UserSecretariat_TreeTag: TIntegerField;
    Get_UserSecretariat_TreeTitle: TStringField;
    DBTreeView: TDBTreeView;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    DBText1: TDBText;
    function NoCondition:String;
    function DateCondition:String;
    function likeCondition:string;
    procedure ACloseExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Refresh;
    procedure RefreshTree;
    procedure SearchClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBTreeViewClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CommiteStatusClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure DBTreeViewGetSelectedIndex(Sender: TObject; Node: TTreeNode);
    procedure noKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);



  private
    { Private declarations }
  public
    Condition :String;
{ Public declarations }
  end;
var
  QuickSearchF: TQuickSearchF;

implementation

uses EnteredLetterInputF, ExitedLetterInputF, yShamsiDate, UMain,
  dmu, Inbox;
 var Do_RefreshTree:boolean;
{$R *.dfm}

function TQuickSearchF.NoCondition:String;
var s:string;
    FI,Ti:word;
begin
   Result:='';
   s:=ReplaceKaf( trim(No.text));
   if s='' then exit;

   if dm.isIndicator(s,FI,Ti) then
    if fi<>ti then
     begin
      result:='(IndicatorID>='+inttostr(FI)+' and IndicatorID<='+IntToStr(TI)+')';
      exit;
     end;
    result:='( (incommingno like ''%'+s+'%'') or ( indicatorid='+s+')  )';
end;

function TQuickSearchF.DateCondition:String;
var FDate,TDate:string;
s:string;
begin
 s:=trim(date.Text);
 Result:='';
 if isDate(_Today,s,FDate,TDate) then
  Result:='((Registrationdate<='''+TDate+''') and  (Registrationdate>='''+FDate+''')) or '+
          '((incommingdate<='''+TDate+''')    and  (incommingdate>='''+FDate   +'''))    '  ;
 if Result<>'' then Result:='('+Result+')';
end;



procedure TQuickSearchF.ACloseExecute(Sender: TObject);
begin
  inherited;
close;
end;



procedure TQuickSearchF.FormShow(Sender: TObject);
begin
  inherited;
  {Ranjbar 87.10.30}
//ANewSearch.Execute;

  BidiModeToRight(DBTreeView);
  DBTreeView.FullExpand;
  DBTreeView.Items.Item[0].Selected := true;
  PageControl1.TabHeight := 1;
   //---
end;

function TQuickSearchF.likeCondition:string;
 var s: string;
begin
 result:='';
 s:=ReplaceKaf(trim( Memo.Text));
 if s='' then exit;
 Result:='((' +dm.MemoCondition(memo.Text,'Memo') +') or  ('+
               dm.MemoCondition(Memo.Text,'UserMemo')+') or ( '+
           'Toorgid in (select id from fromorganizations where title like ''%'+s+'%''))  )';
end;

procedure TQuickSearchF.Refresh;
var    items: TStrings;
       i    : byte;
begin
  inherited;
  items:=TStringList.Create;
  condition:='';
 with items do
  begin
     clear;
     Add(NoCondition);
     Add(DateCondition);
     Add(LikeCondition);
     for i:=0 to Count-1 do
       if  items[i]<>'' then
        if Condition='' then Condition:=items[i]
        else  condition:=condition+' and '+items[i];
  end;
  MainForm.Where:=Condition;
end;



procedure TQuickSearchF.RefreshTree;
 var current_index:integer;
 d : TDateTime;
begin
  inherited;
   if Do_RefreshTree then
   with Get_UserSecretariat_Tree do
    begin
       if Active then
          current_index:=FieldByName('id').Value;
      Close;
      Parameters.ParamByName('@userid').Value:=_userid;
      //Parameters.ParamByName('@myear').Value:=dm.CurrentMYear;
      d:=now;
      Open;
      DBTreeView.Items[0].Expand(False);
      Locate('id',current_index,[]);
    end;
end;

procedure TQuickSearchF.SearchClick(Sender: TObject);
begin
  inherited;
 Refresh;

end;

procedure TQuickSearchF.FormCreate(Sender: TObject);
begin
  inherited;
  Do_RefreshTree:=true;
  RefreshTree;
end;

procedure TQuickSearchF.DBTreeViewClick(Sender: TObject);
begin
  inherited;
{  MainForm.DoRefresh:=false;
  Do_RefreshTree:=false;
  FInbox.Proceed:=Get_UserSecretariat_TreeProceed.AsBoolean;
  mainform.LetterFormat:=Get_UserSecretariat_Treeletterformat.Value;
  mainform.Letter_Type:=Get_UserSecretariat_TreeLetterType.Value;
  MainForm.DoRefresh:=True;

  dm.SecID:= Get_UserSecretariat_Treesecid.Value;
  Do_RefreshTree:=True;
 }
  //Ranjbar


  Try
     MainForm.DoRefresh:=false;
     Do_RefreshTree:=false;

     if Get_UserSecretariat_TreeProceed.AsInteger = 1 then
        FInbox.Proceed:=True
     else
        FInbox.Proceed:=False;
     //Ranjbar
     FInbox.CBReCommiteTypeChange(Nil);
     FInbox.DBLkCBLetterFormatClick(Nil);
     if Get_UserSecretariat_TreeTag.AsInteger = 2 then //ÇÑÓÇáåÇí ÈÇíÇäí äÔÏå
        MainForm.ReCommiteTag := True;
     //---   
     MainForm.DoRefresh:=True;
     dm.SecID:= Get_UserSecretariat_TreeSecID.Value; //ãíÔæÏ RefreshQuery
     Do_RefreshTree:=True;
     
  Finally
     MainForm.ReCommiteTag := False;
  End;
end;

procedure TQuickSearchF.DBTreeViewGetSelectedIndex(Sender: TObject;Node: TTreeNode);
begin
  inherited;
  Node.ImageIndex:=1;

end;

procedure TQuickSearchF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  RefreshTree
end;

procedure TQuickSearchF.CommiteStatusClick(Sender: TObject);
begin
  inherited;
  Refresh;
end;

procedure TQuickSearchF.RadioGroup1Click(Sender: TObject);
begin
  inherited;
   Case RadioGroup1.ItemIndex  of
      0: dm.sp_inbox.Filtered := False;
      1: begin
            dm.sp_inbox.Filtered := False;
            dm.sp_inbox.Filter := 'UserRecomCount = null';
            dm.sp_inbox.Filtered := True;
         end;
      2: begin
            dm.sp_inbox.Filtered := False;
            dm.sp_inbox.Filter   := '(DeadLineDays >= ''0'') And (DeadLineDate<>'''')';
            dm.sp_inbox.Filtered := True;

         end;
      3: begin
            dm.sp_inbox.Filtered := False;
            dm.sp_inbox.Filter := 'DeadLineDays < ''0''';
            dm.sp_inbox.Filtered := True;
         end;
      4: begin
            dm.sp_inbox.Filtered := False;
            dm.sp_inbox.Filter := 'ReType = ''1''';
            dm.sp_inbox.Filtered := True;
         end;
      5: begin
            dm.sp_inbox.Filtered := False;
            dm.sp_inbox.Filter := 'IsAnswer = ''1''';
            dm.sp_inbox.Filtered := True;
         end;
      6: begin
            dm.sp_inbox.Filtered := False;
            dm.sp_inbox.Filter := 'ISFollowup = ''1''';
            dm.sp_inbox.Filtered := True;
         end;
    End;
end;



procedure TQuickSearchF.noKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key =13 then
 Refresh;
end;

end.
