 unit MakeMonthlyU;
//***
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, Buttons, ComCtrls, UemsVCL, ActnList, DB,
  ADODB, Menus, ExtCtrls, Mask, SolarCalendarPackage, AdvGlowButton;

type
  TFrMakeMonthly = class(TYBaseForm)
    Panel1: TPanel;
    BitBtn1: TAdvGlowButton;
    BitBtn2: TAdvGlowButton;
    Panel2: TPanel;
    ProgressBar: TProgressBar;
    AllAcount: TRadioButton;
    oneAccount: TRadioButton;
    SearchEdit: TEdit;
    SelectionAccounts: TRadioButton;
    pnlMain: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    datefrom: TSolarDatePicker;
    Label3: TLabel;
    dateTo: TSolarDatePicker;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    AllAccounts: TListBox;
    SelectedAccounts: TListBox;
    btn1: TAdvGlowButton;
    btn2: TAdvGlowButton;
    AllAccountsSearch: TEdit;
    SelectedAccountsSearch: TEdit;
    Label1: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure datefromEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AllAccountsSearchChange(Sender: TObject);
    procedure SelectedAccountsSearchChange(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure SelectionAccountsClick(Sender: TObject);
    procedure AllAccountsDblClick(Sender: TObject);
    procedure SelectedAccountsDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrMakeMonthly: TFrMakeMonthly;

implementation

uses DMU,BusinessLayer,YShamsiDate, StrUtils;

{$R *.dfm}

procedure TFrMakeMonthly.BitBtn1Click(Sender: TObject);
var ads:TADOStoredProc;
    AccountID, Index: integer;
    ResultDateFrom,ResultDateTo:String;
    FetchedAccountNo, Item: string;
begin
   inherited;
   ModalResult := mrNone ;

   if not Date_CheckTwoDate(DateFrom.Text,DateTo.Text) then
      Exit;

   IF NOT Dm.MonthlyType.Active THEN
      Dm.MonthlyType.Open;
   ReplaceOFDate(datefrom.Text,dateTo.Text,ResultDateFrom,ResultDateTo);
   datefrom.Text:=ResultDateFrom;
   dateTo.Text:=ResultDateTo;
   IF Dm.MonthlyType.IsEmpty THEN
   BEGIN
       ShowMessage('���� ����� � ��� ������� ����� ������.');
       EXIT;
   END;

   if AllAcount.Checked then
   begin
      //  ads:=Select_all_Account;
      ads:=SELECT_ALL_ACCOUNT_WithoutDELAcc  ;
      ProgressBar.Max:=ads.RecordCount;
      while not ads.Eof do
      begin
         MakeMonthly(ads.Fields[0].AsInteger,Txt_Del254(Datefrom.Text),Txt_Del254(DateTo.Text));
         ProgressBar.Position:=ProgressBar.Position+1;
         ads.Next;
      end;
   end
   else if SelectionAccounts.Checked then
   begin
      if SelectedAccounts.Count=0 then
      begin
         ShowMessage('����� ����� ������ ���� ���.');
         exit;
      end;

      ProgressBar.Max:=SelectedAccounts.Count;
      ProgressBar.Position:= 0;
      for Index:= 0 to SelectedAccounts.Count- 1 do
      begin
         Item:= SelectedAccounts.Items[Index];
//         Delete(Item, 7, Length(Item)- 6);           92/02/22 hadi mohamed
         Item := LeftStr(Item,Pos(' ',Item));
         FetchedAccountNo:= Trim(Item);
         AccountID:=Get_AccountID_ByAccountNo(FetchedAccountNo);
         MakeMonthly(AccountID,Txt_Del254(Datefrom.Text),Txt_Del254(DateTo.Text));
         ProgressBar.Position:=ProgressBar.Position+ 1;
      end;
   end
   else //One Account
   begin
      ProgressBar.Position:=0;
      AccountID:=Get_AccountID_ByAccountNo(SearchEdit.Text);
      if AccountID<0 then
      begin
         ShowMessage('��� ���� ���� ��� ���');
         SearchEdit.SetFocus;
         exit;
      end
      else  if AccountID=0 then
      begin
         ShowMessage('��� ����� ���� ���� �����');
         SearchEdit.SetFocus;

         exit;
      end
      else
      begin
         ProgressBar.Position:= 100;
         MakeMonthly(AccountID,Txt_Del254(Datefrom.Text),Txt_Del254(DateTo.Text));
      end;

   end;

   ShowMessage('�� ������ ����� ��');
   ModalResult := mrok ;
   ProgressBar.Position:=0;
end;

procedure TFrMakeMonthly.FormCreate(Sender: TObject);
var
  ads: TADOStoredProc;
begin
   inherited;
   {Ranjbar}
   {datefrom.Text:=copy(_today,1,8)+'01';
   dateTo.Text:=copy(_today,1,5)+'12/29';}
   datefrom.Text:= Copy(_Today,1,5)+'01/01';
   dateTo.Text  := Copy(_Today,1,5)+ '12/29';
   //---

   // Amin Start
   ads:=SELECT_ALL_ACCOUNT_WithoutDELAcc;
   AllAccounts.Items.Clear;
   while(not ads.Eof) do
   begin
//     AllAccounts.Items.Add(inttostr(ads.FieldValues['AccountNo'])+ '   '+ ads.FieldValues['AccountTitle'])  ;
     AllAccounts.Items.Add(ads.FieldValues['AccountNo']+ '   '+ ads.FieldValues['AccountTitle'])  ;
     ads.Next;
   end;
   // Amin End
end;

procedure TFrMakeMonthly.datefromEnter(Sender: TObject);
begin
   inherited;
   TMaskEdit(Sender).SelStart := 3;
end;

procedure TFrMakeMonthly.FormShow(Sender: TObject);
begin
   inherited;
   {Ranjbar}
//   datefrom.Text := '�1300/01/01';
//   dateTo.Text := '�1399/12/29';
   //---
end;

procedure TFrMakeMonthly.AllAccountsSearchChange(Sender: TObject);
var
  SelectedItem: integer;
  Index: integer;
begin
  inherited;
  if Trim(AllAccountsSearch.Text)='' then
     exit;

  SelectedItem:= -1;   
  for Index:= 0 to AllAccounts.Count- 1 do
     AllAccounts.Selected[Index]:= false;

  Index:= 0;
  while((Index< AllAccounts.Items.Count) and (SelectedItem<0))do
  begin
    if Pos(AllAccountsSearch.Text, AllAccounts.Items[Index])> 0 then
       SelectedItem:= Index
    else
       inc(Index);
  end;

  if SelectedItem> -1 then
     AllAccounts.Selected[SelectedItem]:= true;
end;

procedure TFrMakeMonthly.SelectedAccountsSearchChange(Sender: TObject);
var
  SelectedItem: integer;
  Index: integer;
begin
  inherited;
  if Trim(SelectedAccountsSearch.Text)='' then
     exit;

  SelectedItem:= -1;
  for Index:= 0 to SelectedAccounts.Count- 1 do
     SelectedAccounts.Selected[Index]:= false;

  Index:= 0;
  while((Index< SelectedAccounts.Items.Count) and (SelectedItem<0))do
  begin
    if Pos(SelectedAccountsSearch.Text, SelectedAccounts.Items[Index])> 0 then
       SelectedItem:= Index
    else
       inc(Index);
  end;

  if SelectedItem> -1 then
     SelectedAccounts.Selected[SelectedItem]:= true;
end;

procedure TFrMakeMonthly.btn1Click(Sender: TObject);
var
  Index: integer;
  Selected: integer;
begin
  inherited;

  while(AllAccounts.SelCount>0) do
  begin
    Index:= 0;
    Selected:= -1;
    while((Selected<0) and (Index<AllAccounts.Count)) do
    begin
      if AllAccounts.Selected[Index] then
         Selected:= Index
      else
         inc(Index);
    end;

    if Selected>-1 then
    begin
      SelectedAccounts.Items.Add(AllAccounts.Items[Index]);
      AllAccounts.Items.Delete(Index);
    end;
  end;
end;

procedure TFrMakeMonthly.btn2Click(Sender: TObject);
var
  Index: integer;
  Selected: integer;
begin
  inherited;

  while(SelectedAccounts.SelCount>0) do
  begin
    Index:= 0;
    Selected:= -1;
    while((Selected<0) and (Index<SelectedAccounts.Count)) do
    begin
      if SelectedAccounts.Selected[Index] then
         Selected:= Index
      else
         inc(Index);
    end;

    if Selected>-1 then
    begin
      AllAccounts.Items.Add(SelectedAccounts.Items[Index]);
      SelectedAccounts.Items.Delete(Index);
    end;
  end;
end;

procedure TFrMakeMonthly.SelectionAccountsClick(Sender: TObject);
begin
  inherited;
  AllAccounts.Enabled:= SelectionAccounts.Checked;
  AllAccountsSearch.Enabled:= SelectionAccounts.Checked;
  SelectedAccounts.Enabled:= SelectionAccounts.Checked;
  SelectedAccountsSearch.Enabled:= SelectionAccounts.Checked;
  btn1.Enabled:= SelectionAccounts.Checked;
  btn2.Enabled:= SelectionAccounts.Checked;
  lbl1.Enabled:= SelectionAccounts.Checked;
  lbl2.Enabled:= SelectionAccounts.Checked;
end;

procedure TFrMakeMonthly.AllAccountsDblClick(Sender: TObject);
begin
  inherited;
   btn1Click(self);
end;

procedure TFrMakeMonthly.SelectedAccountsDblClick(Sender: TObject);
begin
  inherited;
   btn2Click(self);
end;

end.
