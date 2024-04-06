unit RentU;
{Ranjbar 89.07.15 ID=19}
interface

uses
  UemsVCL, BaseUnit, DB, ADODB, DBActns, Classes, ActnList, ActnMan,
  ComCtrls, ActnMenus, Grids, DBGrids, StdCtrls, DBCtrls, Graphics,Dialogs,
  ExtCtrls, Buttons, ToolWin, ActnCtrls, Mask,Forms, Controls,SysUtils,Windows,
  DBLookupEdit, YCheckGroupBox, YDbgrid, ExtActns, XPStyleActnCtrls,
  xpWindow, xpPages, xpBitBtn, Menus;


type
  TFrAddRent= class(TMBaseForm)
    mainPanel: TPanel;
    BeginPanel: TGroupBox;
    Label8: TLabel;
    Label5: TLabel;
    RenterTitleEdit: TEdit;
    DBEBeginDate: TDBShamsiDateEdit;
    GroupBox3: TPanel;
    Label1: TLabel;
    Label24: TLabel;
    DBEIndicatorID: TDBEdit;
    DBERegistrationDate: TDBShamsiDateEdit;
    Select_Rent: TADOStoredProc;
    Select_RentRentID: TAutoIncField;
    Select_RentRenterID: TIntegerField;
    Select_RentLetterID: TIntegerField;
    Select_RentBeginDate: TStringField;
    Select_RentEndDate: TStringField;
    Select_RentComment: TWideStringField;
    Select_RentRenterTitle: TStringField;
    AEnter: TAction;
    DBGRenter: TYDBGrid;
    Label3: TLabel;
    DBShamsiDateEdit3: TDBShamsiDateEdit;
    Select_RentMatureDate: TStringField;
    Panel1: TPanel;
    DBMemoComment: TDBMemo;
    Label4: TLabel;
    EndPanel: TPanel;
    DBEEndDate: TDBShamsiDateEdit;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SBReport: TSpeedButton;
    DBNavigator1: TDBNavigator;
    RepPopMnu: TPopupMenu;
    NShow: TMenuItem;
    NPrint: TMenuItem;
    NDesign: TMenuItem;
    MenuItem1: TMenuItem;
    NClear: TMenuItem;
    SBEndDate: TSpeedButton;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    IncommingNO: TDBEdit;
    Select_RentUserId: TIntegerField;
    procedure FormActivate(Sender: TObject);
    procedure GetRent(RentID:integer);
    procedure DBLookupComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBShamsiDateEditEnter(Sender: TObject);
    procedure AenterExecute(Sender: TObject);
    procedure Insert(LetterID:integer);
    procedure Edit;
    procedure RenterTitleEditExit(Sender: TObject);
    procedure UpdateDblookup(all:Boolean);
    procedure SpeedButton10Click(Sender: TObject);
    procedure DBGRenterKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RenterTitleEditChange(Sender: TObject);
    procedure RenterTitleEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGRenterCellClick(Column: TColumn);
    procedure GetID(IsFrom:boolean);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure SBReportClick(Sender: TObject);
    procedure NShowClick(Sender: TObject);
    procedure NClearClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure RenterTitleEditKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SBEndDateClick(Sender: TObject);
    procedure DBEEndDateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEEndDateChange(Sender: TObject);
    procedure DBEBeginDateChange(Sender: TObject);
    procedure DBShamsiDateEdit3Change(Sender: TObject);
  private
    { Private declarations }
  public
   LetterID , RentID : Integer;
  end;

var
  FrAddRent: TFrAddRent;

implementation

uses UMain, Dmu, FromOrgU, YShamsiDate, RentDM;


{$R *.dfm}
procedure TFrAddRent.UpdateDblookup;
begin
  inherited;
 RenterTitleEdit.OnChange:=nil;
 RenterTitleEdit.Text:=select_RentRenterTitle.AsString;
 RenterTitleEdit.OnChange:=RenterTitleEditChange;
end;

procedure TFrAddRent.FormActivate(Sender: TObject);
var temp:TWinControl;
begin
  inherited;
with dm do
 begin
   temp:=ActiveControl;

 ActiveControl:=temp;
 mainPanel.Color:=GetValue(1007);
 UpdateDblookup(false);
end;
end;

procedure TFrAddRent.GetRent(RentID: integer);
begin
  inherited;
with select_Rent do
 begin
  close;
  Parameters.ParamByName('@RentID').Value:=RentID;
  open;
 end;
end;

procedure TFrAddRent.DBLookupComboBox2KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
 if key=32 then
    GetID(true);
end;

procedure TFrAddRent.DBShamsiDateEditEnter(Sender: TObject);
begin
  inherited;
TCustomEdit(sender).SelStart:=8;
TCustomEdit(sender).SelLength:=2;
TEditEnter(Sender);
end;

procedure TFrAddRent.AenterExecute(Sender: TObject);
begin
  inherited;
  if DBGRenter.Focused then
   begin
    RenterTitleEdit.SetFocus;
    RenterTitleEdit.OnChange:=nil;
    RenterTitleEdit.Text:=dm.RenterRenterTitle.AsString;
    RenterTitleEdit.OnChange:=RenterTitleEditChange;

    DBGRenter.Hide;
   end else
 SelectNext(ActiveControl,true,true);
end;

procedure TFrAddRent.Insert(LetterID:integer);
begin
  inherited;
  with dm,Select_Rent do
   begin
    insert;
    FieldByName('UserId').Value := _UserId;
    FieldByName('beginDate').Value:=_Today;
    try
       FieldByName('MatureDate').Value:=ShamsiIncDate(_Today,0,0,DefaultRentDays)
    except
    end;
    FieldByName('LetterID').Value:=LetterID;
    {Ranjbar 89.07.15 ID=19}
    {EndPanel.Color:=clGray;
    EndPanel.Enabled:=False;}
    RenterTitleEdit.Text:='' ;
    //---
  end;
end;

procedure TFrAddRent.Edit;
begin
  inherited;
   Select_Rent.Edit;
   {Ranjbar 89.07.15 ID=19}
   {BeginPanel.Enabled:=false;
   BeginPanel.Color:=clGray;}
   DBEEndDate.SetFocus;
   //---
end;

procedure TFrAddRent.GetID(IsFrom:boolean);
begin
  inherited;
   FromOrgForm:=TFromOrgForm.Create(Application);
       DSForm.DataSet.FieldByName('RenterID').AsInteger:=_ResultOrgID;
       RenterTitleEdit.OnChange:=nil;
       RenterTitleEdit.Text:=_ResultOrgTitle;
       RenterTitleEdit.OnChange:=RenterTitleEditChange;
end;
procedure TFrAddRent.RenterTitleEditExit(Sender: TObject);
var S:string;
begin
   inherited;
   S := YeganehTrim(RenterTitleEdit.Text);

   if Is_Integer(RenterTitleEdit.Text) then
      with Dm,Renter do
      begin
         Select_RentRenterID.AsInteger := RenterRenterID.AsInteger;
         RenterTitleEdit.OnChange := nil;
         RenterTitleEdit.Text := RenterRenterTitle.AsString;
         RenterTitleEdit.OnChange := RenterTitleEditChange;
      end;

   if not DBGRenter.Focused then
      DBGRenter.Hide;
end;


procedure TFrAddRent.SpeedButton10Click(Sender: TObject);
begin
   inherited;
   GetID(false);
end;

procedure TFrAddRent.DBGRenterKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   inherited;
   if key=32 then
      GetID(False);
end;

procedure TFrAddRent.RenterTitleEditChange(Sender: TObject);
var s,t:string;
begin
   inherited;
   s:=Replace(YeganehTrim(RenterTitleEdit.Text),char(152),'yy');
   S:=Replace(s,'ß','yy');
   t:=' replace(replace(Rentertitle,char(152),''yy''),''ß'',''yy'')';

   with dm.Renter do
      if length(s)>=2  then
      begin
         Close;
         CommandText:='Select * from Renter where '+t+' like '''+s+'%''';
         DBGRenter.Show;
         open;
      end;
end;

procedure TFrAddRent.RenterTitleEditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   inherited;
   if (key=vk_down) or (key=vk_up) then
   begin
      if ssalt in shift then
         DBGRenter.Visible:=not DBGRenter.Visible
      else
         DBGRenter.SetFocus;
   end;
end;

procedure TFrAddRent.DBGRenterCellClick(Column: TColumn);
begin
   inherited;
   begin
      RenterTitleEdit.OnChange:=nil;
      RenterTitleEdit.Text:=dm.RenterRenterTitle.AsString;
      RenterTitleEdit.OnChange:=RenterTitleEditChange;
      DBGRenter.Hide;
      DBShamsiDateEdit3.SetFocus;
   end;
end;

procedure TFrAddRent.FormShow(Sender: TObject);
begin
   inherited;

   GetRent(Self.RentID);
   if rentid<0 then
      Insert(Self.LetterID)
   else
      Edit;

   if Select_Rent.State=dsinsert then
      DBEBeginDate.SetFocus
   else
      DBEEndDate.SetFocus;

   DBNav_Setup(DBNavigator1);   
end;

procedure TFrAddRent.SpeedButton1Click(Sender: TObject);
begin
   inherited;
   Close;
end;

procedure TFrAddRent.DBNavigator1BeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
   inherited;
   {Ranjbar 89.07.15 ID=19}
   if Button = nbPost then
   begin
      //FieldByName('RenterID').AsInteger := Dm.NewRenter(RenterTitleEdit.text);{Renter ÇíÌÇÏ íß ÇãÇäÊ íÑäÏå ÏÑ ÌÏæá}
      Select_RentRenterID.AsInteger := Dm.NewRenter(RenterTitleEdit.text);{Renter ÇíÌÇÏ íß ÇãÇäÊ íÑäÏå ÏÑ ÌÏæá}
   end;
   //---
end;

procedure TFrAddRent.SBReportClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.07.15 ID=19}
   Cursor_SetPos(Self,SBReport,RepPopMnu);
   //---
end;

procedure TFrAddRent.NShowClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.07.15 ID=19}
   if Select_Rent.State in [dsEdit,dsInsert] then
   begin
      ShowMyMessage('íÛÇã','ßÇÑÈÑ ÑÇãí ¡ áØÝÇ ÞÈá ÇÒ Ç ÇØáÇÚÇÊ ÎæÏ ÑÇ ÐÎíÑå äãÇííÏ',[mbOK],mtInformation);
      Exit;
   end;

   Try
      DMRent := TDMRent.Create(nil);
      With DMRent do
      begin
         QrRepRent.Close;
         QrRepRent.Parameters.ParamByName('RentID').Value := Select_RentRentID.AsInteger;
         QrRepRent.Open;
         if QrRepRent.RecordCount = 0 then
         begin
            ShowMessage('åí Ñ˜æÑÏí íÇÝÊ äÔÏ');
            Exit;
         end;

         Rep_LoadFile(frxRepRent,'Rent1.fr3');
         //TfrxReportSummary(DMRent.frxRepRent.FindComponent('ReportSummary1')).Visible := False;
         if Sender = NShow  then
            Rep_Show(frxRepRent,rtShow);  //íÔ äãÇíÔ
         if Sender = NPrint  then
            Rep_Show(frxRepRent,rtPrint); //Ç ÓÑíÚ
         if Sender = NDesign  then
            Rep_Show(frxRepRent,rtDesign);//ØÑÇÍí
      end;
   Finally
      DMRent.QrRepRent.Close;
      FreeAndNil(DMRent);
   end;
end;

procedure TFrAddRent.NClearClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.07.15 ID=19}
   Rep_CorrectDesign('Rent1.fr3');
end;

procedure TFrAddRent.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   inherited;
   {Ranjbar 89.07.15 ID=19}
   if Select_Rent.State in [dsEdit,dsInsert] then
   begin
      if ShowMyMessage('íÛÇã','ÈÇäß ÇØáÇÚÇÊí ÏÑ ÍÇáÊ æíÑÇíÔ ãí ÈÇÔÏ . ÂíÇ ãÇíá Èå ÐÎíÑå ÇØáÇÚÇÊ åÓÊíÏ¿',mbOKCancel,mtWarning)=mrok then
         try

         Select_Rent.Post;
         except
              ShowMessage('áØÝÇ ÇØáÇÚÇÊ ÑÇ ÕÍíÍ æÇÑÏ ˜äíÏ');
              Action := caNone;
         end
      else
         Select_Rent.Cancel;
   end;
end;

procedure TFrAddRent.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
   inherited;
   {Ranjbar 89.07.15 ID=19}
   if Button = nbEdit then
   begin
      if (Self.RentID < 0)And(Select_Rent.RecordCount=0) then
         Insert(Self.LetterID)
       else
          Edit;
   end;

   if Button = nbCancel then
   begin
      if Select_Rent.State = dsInsert then
         RenterTitleEdit.Clear;
      if Select_Rent.State = dsEdit then
         RenterTitleEdit.Text := Trim(Select_RentRenterTitle.AsString);
   end;

end;

procedure TFrAddRent.RenterTitleEditKeyPress(Sender: TObject; var Key: Char);
begin
   inherited;
   {Ranjbar 89.07.15 ID=19}
   if not(Select_Rent.State in [dsEdit,dsInsert]) then
      Abort;
end;

procedure TFrAddRent.FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
   inherited;
   {Ranjbar 89.07.15 ID=19}
   Form_SetShortCut(Self,DBNavigator1,nil,SBReport,sender,Key,Shift);
end;

procedure TFrAddRent.SBEndDateClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.07.15 ID=19}
   if Select_Rent.State in [dsEdit,dsInsert] then
      Select_RentEndDate.AsString := _Today;
end;

procedure TFrAddRent.DBEEndDateKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
   inherited;
   {Ranjbar 89.07.15 ID=19}
   if Key = Vk_Space then
      SBEndDate.Click;
end;

procedure TFrAddRent.DBEEndDateChange(Sender: TObject);
begin
  inherited;
   if DBEEndDate.Text<DBEBeginDate.Text then
      DBEEndDate.Text := DBEBeginDate.Text;
end;

procedure TFrAddRent.DBEBeginDateChange(Sender: TObject);
begin
  inherited;
   if DBEBeginDate.Text<DBERegistrationDate.Text then
      DBEBeginDate.Text := DBERegistrationDate.Text;
end;

procedure TFrAddRent.DBShamsiDateEdit3Change(Sender: TObject);
begin
  inherited;
   if DBShamsiDateEdit3.Text<DBEBeginDate.Text then
      DBShamsiDateEdit3.Text := DBEBeginDate.Text;
end;

end.

