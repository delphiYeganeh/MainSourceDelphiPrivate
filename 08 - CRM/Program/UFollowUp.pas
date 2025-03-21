unit UFollowUp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, Buttons, DBCtrls, Mask, ExtActns, ActnList,
  DB, UemsVCL, ExtCtrls, Grids, DBGrids, YDbgrid, ADODB, Menus,shellApi,
  SolarCalendarPackage, xpPanel, ComCtrls, MssCalendarPro, MssMessage,
  DBTreeView;

type
  TFrFollowUp = class(TMBaseForm)
    OpenDialog: TOpenDialog;
    Select_customer_By_CustomerID: TADOStoredProc;
    Select_customer_By_CustomerIDCustomerID: TAutoIncField;
    Select_customer_By_CustomerIDCustomerNo: TStringField;
    Select_customer_By_CustomerIDPersonTitle: TWideStringField;
    Select_customer_By_CustomerIDAddress: TWideStringField;
    Select_customer_By_CustomerIDPhone: TWideStringField;
    Select_customer_By_CustomerIDNotes: TWideStringField;
    Select_customer_By_CustomerIDCompanyName: TWideStringField;
    Select_customer_By_CustomerIDTreater: TWideStringField;
    Select_customer_By_CustomerIDPostalCode: TWideStringField;
    Select_customer_By_CustomerIDEmailAddress: TWideStringField;
    Select_customer_By_CustomerIDWorkPhone1: TWideStringField;
    Select_customer_By_CustomerIDFaxNumber: TWideStringField;
    Select_customer_By_CustomerIDMobilePhone: TWideStringField;
    DSelect_customer_By_CustomerID: TDataSource;
    Select_customer_By_CustomerIDProducts: TWideStringField;
    Select_customer_By_CustomerIDCityId: TSmallintField;
    Select_customer_By_CustomerIDGroupId: TIntegerField;
    Select_customer_By_CustomerIDMarketerID: TIntegerField;
    Select_customer_By_CustomerIDIsActive: TBooleanField;
    Select_customer_By_CustomerIDSenderType: TWordField;
    Select_customer_By_CustomerIDPriority: TIntegerField;
    Select_customer_By_CustomerIDCompaginID: TWordField;
    Select_customer_By_CustomerIDWebsite: TStringField;
    Select_customer_By_CustomerIDcompetitiveNote: TWideStringField;
    Select_customer_By_CustomerIDInsertdate: TStringField;
    Select_customer_By_CustomerIDLastUpdate: TStringField;
    Select_customer_By_CustomerIDCustomerStatusID: TWordField;
    Select_customer_By_CustomerIDCancelReasonID: TWordField;
    Select_customer_By_CustomerIDCancelComment: TWideStringField;
    Select_customer_By_CustomerIDCancelDate: TStringField;
    PPUDate: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    MssCalendarPro1: TMssCalendarPro;
    MssMessage1: TMssMessage;
    acDelEghdamat: TAction;
    Select_customer_By_CustomerIDInnerPhone: TStringField;
    pnlMain: TPanel;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label28: TLabel;
    Label13: TLabel;
    Label18: TLabel;
    Label23: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    UnPin: TSpeedButton;
    Pin: TSpeedButton;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBECompanyName: TDBEdit;
    DBEdit8: TDBEdit;
    DBEProducts: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit7: TDBEdit;
    chkShowAllFollowUps: TCheckBox;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    GroupBox2: TGroupBox;
    dbgFollow: TYDBGrid;
    xpPanel1: TxpPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    btnSrchFollow: TBitBtn;
    BDate: TShamsiDateEdit;
    Edate: TShamsiDateEdit;
    dblMarketer: TDBLookupComboBox;
    dblDoneStatusID: TDBLookupComboBox;
    GroupBox3: TGroupBox;
    treFollowUps: TDBTreeView;
    grpData: TPanel;
    Panel1: TGroupBox;
    btnAttachPic: TSpeedButton;
    btnWordView: TSpeedButton;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label1: TLabel;
    SpeedButton5: TSpeedButton;
    Label11: TLabel;
    btnJpegView: TSpeedButton;
    btnWordClear: TSpeedButton;
    btnJpegClear: TSpeedButton;
    SpeedButton1: TSpeedButton;
    lblDate1: TLabel;
    Label25: TLabel;
    DBText2: TDBText;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Label26: TLabel;
    SpeedButton10: TSpeedButton;
    SpeedButton12: TSpeedButton;
    Label29: TLabel;
    SpeedButton11: TSpeedButton;
    DBLkCBActionTypeTitle: TDBLookupComboBox;
    DBLMarketerTitle: TDBLookupComboBox;
    DBMemoComment: TDBMemo;
    DBEdit11: TDBEdit;
    DBEdit9: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SpeedButton2: TSpeedButton;
    lblDate2: TLabel;
    Label24: TLabel;
    DBTextStatusSaveDate: TDBText;
    DBLkCBDoneStatusTitle: TDBLookupComboBox;
    DBMemoDoneComment: TDBMemo;
    DBCoBoSuccessChance: TDBComboBox;
    btnAdd: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    btnDelEghdamat: TBitBtn;
    DBEdit10: TDBEdit;
    Button3: TButton;
    Button4: TButton;
    btnAddSub: TBitBtn;
    Panel2: TPanel;
    BtnCancel: TBitBtn;
    btnShowContractWord: TBitBtn;
    Label27: TLabel;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Splitter1: TSplitter;
    stb: TStatusBar;
    btnRefrenceInPerson: TBitBtn;
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
    Select_customer_By_CustomerIDProductsIdSTR: TStringField;
    SpSelect_CasesCheckUserID: TIntegerField;
    SpSelect_CasesIsBug: TBooleanField;
    SpSelect_CasesFollowUpID: TIntegerField;
    followUpItem: TRadioGroup;
    Label32: TLabel;
    DBLkCBActionTypeTitleSearch: TDBLookupComboBox;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    btnViwCustomer: TBitBtn;
    Select_customer_By_CustomerIDCountMeet: TIntegerField;
    Select_customer_By_CustomerIDCountCancelMeet: TIntegerField;
    Select_customer_By_CustomerIDCountHumanInterface: TIntegerField;
    DBCheckBox1: TDBCheckBox;
    Select_customer_By_CustomerIDCustomerSuccessChance: TSmallintField;
    gbInformationSale: TGroupBox;
    Label34: TLabel;
    Label33: TLabel;
    DBEdit6: TDBEdit;
    DBEdit14: TDBEdit;
    Label35: TLabel;
    DBEdit15: TDBEdit;
    Label36: TLabel;
    DBEdit16: TDBEdit;
    Label37: TLabel;
    edtAmount: TDBEdit;
    Select_customer_By_CustomerIDPriceestimate: TFloatField;
    Label38: TLabel;
    ALLMarketerTitleShow: TDBEdit;
    ALLActionTypeTitleShow: TDBEdit;
    Button5: TButton;
    DBText3: TDBText;
    OtherPeople: TBitBtn;
    pnlStateCustomer: TPanel;
    BitBtn3: TBitBtn;
    btnChangeStateCustomer: TBitBtn;
    pnlFactor: TPanel;
    btnFactor: TBitBtn;
    chFactor: TDBCheckBox;
    chPreFactor: TDBCheckBox;
    SpeedButton13: TSpeedButton;
    btnCopy: TSpeedButton;
    Label39: TLabel;
    DBText1: TDBText;
    procedure btnWordViewClick(Sender: TObject);
    procedure btnAttachPicClick(Sender: TObject);
    procedure refreshData;
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnChangeStateCustomerClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure AexitExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnJpegViewClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnShowContractWordClick(Sender: TObject);
    procedure edtToDoDateChange(Sender: TObject);
    procedure edtDoneDateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtToDoDateKeyPress(Sender: TObject; var Key: Char);
    procedure edtDoneDateKeyPress(Sender: TObject; var Key: Char);
    procedure CBNextKeyPress(Sender: TObject; var Key: Char);
    procedure N1Click(Sender: TObject);
    procedure btnSrchFollowClick(Sender: TObject);
    procedure btnJpegClearClick(Sender: TObject);
    procedure btnWordClearClick(Sender: TObject);
    procedure dbgFollowNeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit9Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBEdit10Change(Sender: TObject);
    procedure acDelEghdamatExecute(Sender: TObject);
    procedure dbgFollowCellClick(Column: TColumn);
    procedure treFollowUpsChange(Sender: TObject; Node: TTreeNode);
    procedure chkShowAllFollowUpsClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure PinClick(Sender: TObject);
    procedure btnRefrenceInPersonClick(Sender: TObject);
    procedure btnFactorClick(Sender: TObject);
    procedure DBLMarketerTitleEnter(Sender: TObject);
    procedure DBLMarketerTitleExit(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure btnViwCustomerClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtAmountChange(Sender: TObject);
    procedure OtherPeopleClick(Sender: TObject);
    procedure dbgFollowNeedImageIndex(Column: TColumn;
      var ImageIndex: Integer);
    procedure SpeedButton13Click(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
  private
   Function  LoadImageField(Field:TField;Path:String):Boolean;
   procedure SetColorForm ;
   procedure EnableButtom ( amode : String);
    { Private declarations }
  public
    { Public declarations }
       FUID : integer;
    CustomerID: integer;
    Edited :Boolean;
    PinValue : string;
    constructor create(AOwner :TComponent;ExCustomerID : Integer;IsItNewRecord : Boolean = false);reintroduce;virtual;
  end;

var
 FrFollowUp: TFrFollowUp;

implementation

uses dmu, YShamsiDate, UContract, CancelCustomerU, Telinputunit, ImageUnit,
  URefrenceInPerson, FactorFM,BusinessLayer, FmOtherPerson_U ,Clipbrd;

{$R *.dfm}

procedure TFrFollowUp.btnWordViewClick(Sender: TObject);
var Path :String;
begin
  inherited;
   Path := Directory+'FollowUp'+dm.Select_FollowUP_By_CustomerIDFollowUPID.AsString+Replace(dm.Select_FollowUP_By_CustomerIDToDoDate.AsString,'/','-')+'.doc';
   if LoadImageField(dm.Select_FollowUP_By_CustomerIDWordAttachment,path) then
   begin
   dm.OpenWordFile(path);

   if UpperCase(MssMessage1.execute('��� ������� �� ���� ��� ����� ��Ͽ'))=UpperCase('Ok') then
   begin
      try
       dm.Select_FollowUP_By_CustomerID.DisableControls;
         if (dm.Select_FollowUP_By_CustomerID.State<>dsEdit) or (dm.Select_FollowUP_By_CustomerID.State<>dsInsert) then
              dm.Select_FollowUP_By_CustomerID.Edit;
         dm.Select_FollowUP_By_CustomerIDWordAttachment.LoadFromFile(Path);
         dm.Select_FollowUP_By_CustomerID.Post;
       dm.Select_FollowUP_By_CustomerID.EnableControls;
       except
         dm.Select_FollowUP_By_CustomerID.EnableControls;
       end;
   end;

   end;
end;

procedure TFrFollowUp.btnAttachPicClick(Sender: TObject);
var
  tempReslt : string ;
begin
  inherited;
  tempReslt :=  AddImageField(dm.Select_FollowUP_By_CustomerIDPicAttachment,'Picture Files|*.jpg;*.jpeg');   //;*.tif

  if trim(tempReslt) <> '' then
  begin
    if not(dm.Select_FollowUP_By_CustomerID.State in [dsinsert,dsedit]) then
      dm.Select_FollowUP_By_CustomerID.Edit;

    dm.Select_FollowUP_By_CustomerIDPicAttachmentType.AsString := tempReslt ;
    dm.Select_FollowUP_By_CustomerID.Post;
  end;
  {
OpenDialog.Filter:='Jpeg Files|*.jpg';
 if OpenDialog.Execute then
   dm.Select_FollowUP_By_CustomerIDAttachment2.AsString:=OpenDialog.FileName;
   }
end;

procedure TFrFollowUp.refreshData;
//var

begin
   inherited;
   with Select_customer_By_CustomerID do
   begin
      Close;
      Parameters.ParamByName('@customerid').Value:= CustomerID;
      Open;
      _gCustomerID :=  Select_customer_By_CustomerIDCustomerID.Value;      
   end;

   with dm.Select_FollowUP_By_CustomerID do
   begin
      Close;
      Parameters.ParamByName('@customerid').Value:= CustomerID;

      if  followUpItem.ItemIndex = -1 then
        Parameters.ParamByName('@orgID').Value:=_orgID
      else
      Parameters.ParamByName('@orgID').Value:= followUpItem.ItemIndex ;
      //Parameters.ParamByName('@orgID').Value:=_orgID;

      Parameters.ParamByName('@DoneDate').Value:=Trim(BDate.Text);
      Parameters.ParamByName('@TodODate').Value:=Trim(EDate.Text);

      if dblMarketer.KeyValue <> null then
        Parameters.ParamByName('@MarketerID').Value:= dblMarketer.KeyValue
      else   Parameters.ParamByName('@MarketerID').Value:= 0;

      if dblDoneStatusID.KeyValue <> null then
        Parameters.ParamByName('@DoneStatusID').Value:= dblDoneStatusID.KeyValue
      else   Parameters.ParamByName('@DoneStatusID').Value:= 0;

      if DBLkCBActionTypeTitleSearch.KeyValue <> null then
        Parameters.ParamByName('@ActionTypeID').Value:= DBLkCBActionTypeTitleSearch.KeyValue
      else   Parameters.ParamByName('@ActionTypeID').Value:= 0;

      Open;
      stb.Panels[1].Text:='�����:' +IntToStr(RecordCount);
      //Last;
   end;

  { TODO -oparsa : 14030205 }
  if CustomerID > 0 then
    PinValue := Qry_GetResult(' select 1 FROM dbo.usersPinFollowUP WHERE CustomerID = '+ DBEdit4.text +'  AND  UserID = '+ IntToStr(_UserId ) ,dm.YeganehConnection);

  Pin.Visible    := PinValue = '' ;
  UnPin.Visible  := not Pin.Visible  ;

  { TODO -oparsa : 14030205 }

  if GetActionAccess(_accessID,'acpnlCustomerStatus',1) = False  then
    btnChangeStateCustomer.Enabled := Select_Customer_By_CustomerIDCustomerStatusID.asInteger <> 2 ;

  BitBtn2.Enabled        := (dbgFollow.DataSource.DataSet.RecordCount > 0);
  btnDelEghdamat.Enabled := (dbgFollow.DataSource.DataSet.RecordCount > 0);
  BitBtn1.Enabled        := (dbgFollow.DataSource.DataSet.RecordCount > 0);
end;

procedure TFrFollowUp.BitBtn2Click(Sender: TObject);
begin
  inherited;

  if (Dm.Select_FollowUP_By_CustomerIDIsAuto.AsBoolean) then
  begin
    if (Dm.Select_FollowUP_By_CustomerIDParentMarketerID.AsInteger <> _MarketerID) then
    begin
      ShowMessage('���� ������ � ј������ ��� ��� ���� ����� ���� �����');
      Exit;
    end
  end
  else
  if not _ManagerOfficial then   //ǐ� ���� ���� ����� ����
    if(Dm.Select_FollowUP_By_CustomerIDMarketerID.AsInteger <> _MarketerID) then
    begin
      if (Dm.Select_FollowUP_By_CustomerIDParentMarketerID.AsInteger <> _MarketerID) then
      begin
        ShowMessage('���� ��� � ������ ������� ����� �� ������� ��� ���� �����');
        Exit;
      end;
    end;
  EnableButtom('EDIT');
  pnlStateCustomer.Enabled := False ;
  treFollowUps.DataSource:= nil;  // Amin 1391/08/25
   dm.Select_FollowUP_By_CustomerID.Edit;
//     if not (UpperCase(_AreYouYeganeh) = UpperCase('True')) then
//     begin
//        treFollowUps.DataSource:= Dm.DSelect_FollowUP_By_CustomerID;
////      treFollowUps.Refresh;
//     end;

  DBMemoDoneComment.SetFocus ;
end;

procedure TFrFollowUp.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  AddImageField(dm.Select_FollowUP_By_CustomerIDWordAttachment,'Word Files|*.doc;*.docx');
  
  {
  OpenDialog.Filter:='Word Files|*.doc';
 if OpenDialog.Execute then
   dm.Select_FollowUP_By_CustomerIDAttachment1.AsString:=OpenDialog.FileName;
   }
end;

procedure TFrFollowUp.BitBtn3Click(Sender: TObject);
begin
  inherited;
 FrContract:=TFrContract.Create(Application,Select_customer_By_CustomerIDCustomerID.AsInteger);
 FrContract.ShowModal;

end;

procedure TFrFollowUp.btnChangeStateCustomerClick(Sender: TObject);
begin
  inherited;
  FrCancelCustomer := TFrCancelCustomer.Create(Application);
  with FrCancelCustomer do
  begin
    if Dm.Select_FollowUP_By_CustomerIDCustomerID.AsInteger = 0 then
      CustomerID := Self.Select_customer_By_CustomerIDCustomerID.AsInteger  //Dm.Select_FollowUP_By_CustomerIDCustomerID.AsInteger;
    else  CustomerID := Dm.Select_FollowUP_By_CustomerIDCustomerID.AsInteger;
    
    RefreshData;
    ShowModal;

    if FrCancelCustomer.RefreshNeed  then
    begin
      Self.followUpItem.ItemIndex := -1 ;
      Self.refreshData;
    end;
  end;


end;

procedure TFrFollowUp.BtnCancelClick(Sender: TObject);
begin
  inherited;
  Dm.Marketer.Filtered := False;
  Dm.Marketer.Filter := '' ;
  Dm.Marketer.Filtered := True;
  pnlStateCustomer.Enabled := True ;
  EnableButtom('OK');
  close
end;

procedure TFrFollowUp.btnDelClick(Sender: TObject);
var Id:Integer;
begin
  Inherited;
  IF MessageDlg('��� �� ��� ������� ����� ����Ͽ',mtConfirmation,[mbyes,mbno],0)=mryes then
  Begin
     Qry_SetResult(' Delete From Followup Where FollowUpID = '+Dm.Select_FollowUP_By_CustomerIDFollowUPID.AsString ,Dm.YeganehConnection);
     Dm.Select_FollowUP_By_CustomerID.Prior;
     ID := Dm.Select_FollowUP_By_CustomerIDFollowUPID.Value;
     Dm.Select_FollowUP_By_CustomerID.Next;
     Dm.Select_FollowUP_By_CustomerID.Requery;
     Dm.Select_FollowUP_By_CustomerID.Locate('FollowUPID',id,[]);
  End;
end;

procedure TFrFollowUp.btnAddClick(Sender: TObject);
var
   ParentID : integer;     // Amin 1391/08/25
begin
  inherited;
  EnableButtom('ADD');
   With Dm.Select_FollowUP_By_CustomerID do
      if State in [dsEdit,dsInsert] then
      begin
        BitBtn1Click(self);
      end;
  
   if not( Select_customer_By_CustomerIDCustomerStatusID.AsInteger  in [1,2])  then
   begin
      ShowMessage('����� ��� ����� �� ��� ����� ���� ��� ��� ���� � ����� ���� �� ��� ���');
      Exit;
   end;
   
   pnlStateCustomer.Enabled := False ;

   // Amin 1391/08/25 Start
   if((sender as TBitBtn).Name = 'btnAdd') then
   begin
      if (Dm.Select_FollowUP_By_CustomerID.RecNo = -1) or (Dm.Select_FollowUP_By_CustomerID.RecordCount = 0) then
         ParentID := 0
      else
         ParentID := Dm.Select_FollowUP_By_CustomerIDParentFollowUpID.Value;
   end
   else
   begin
      if (Dm.Select_FollowUP_By_CustomerID.RecNo = -1) or (Dm.Select_FollowUP_By_CustomerID.RecordCount = 0) then
         ParentID := 0
      else
         ParentID := Dm.Select_FollowUP_By_CustomerIDFollowUPID.Value;
   end;
   // Amin 1391/08/25 End

   treFollowUps.DataSource := nil;    // Amin 1391/08/25

   Dm.Select_FollowUP_By_CustomerID.Last ;

   //Dm.Select_FollowUP_By_CustomerID.insert;//Append;
   Dm.Select_FollowUP_By_CustomerID.Append;
   dm.Select_FollowUP_By_CustomerIDParentFollowUpID.Value := ParentID;   // Amin 1391/08/25

   if _accessID in [4,7,19] then //  ����� ����
     Dm.Select_FollowUP_By_CustomerIDActionTypeID.AsInteger  :=  StrToInt(Qry_GetResult('   select top 1 ActionTypeID  FROM dbo.ActionType where SortOrderInSale = 1 ' ,dm.YeganehConnection));


   if Dm.Select_FollowUP_By_CustomerID.RecordCount  = 0 then
   begin
     if _accessID in [4,7,19] then //  ����� ����
     begin
       if Dm.Select_Customer_By_CustomerIDCompaginID.AsInteger = 1 then
         Dm.Select_FollowUP_By_CustomerIDActionTypeID.AsInteger := 72
       else
       if  Dm.Select_Customer_By_CustomerIDCompaginID.AsInteger = 2 then
         Dm.Select_FollowUP_By_CustomerIDActionTypeID.AsInteger := 73 ;
     end;
   end ;
   
//   dm.Select_FollowUP_By_CustomerIDActionTypeID.Value := 1;
//   Dm.Select_FollowUP_By_CustomerIDCustomerID.AsInteger := CustomerID;
//   edtToDoDate.Text :=_Today;
   if not (UpperCase(_AreYouYeganeh) = UpperCase('True')) then
     begin
     //   treFollowUps.DataSource:= Dm.DSelect_FollowUP_By_CustomerID;
       // treFollowUps.Refresh;
     end;

   BitBtn1.Enabled        := True;
   DBMemoComment.SetFocus;

end;

procedure TFrFollowUp.BitBtn1Click(Sender: TObject);
var
   IsInEditMode :boolean; // Amin 1391/12/26
   IndicatorID : integer; // Amin 1391/12/26
   CaseAccept : string;
   ButtonName : string;
   InputValue : string;
   Isnumber : Boolean;
   indx : Integer;
   TempDate : TDateTime ;
begin
  inherited;
   With Dm.Select_FollowUP_By_CustomerID do
      if not (State in [dsEdit,dsInsert]) then
         EDIT;
   With Dm.Select_FollowUP_By_CustomerID do
      if State in [dsEdit,dsInsert] then
      begin
         if (DBLkCBActionTypeTitle.KeyValue = 0) or (DBLkCBActionTypeTitle.KeyValue = Null) then
         begin
            ShowMyMessage('�����','���� "��� �����" ���� ������',[mbOK],mtInformation);
            DBLkCBActionTypeTitle.SetFocus;
            DBLkCBActionTypeTitle.DropDown;
            Abort;
         end;

         if _accessID in [6,9,15] then //  ����� ��������
           if (Trim(DBMemoComment.Text) = '' ) then
           begin
              ShowMyMessage('�����','���� ����� ����� �� �� ������',[mbOK],mtInformation);
              DBMemoComment.SetFocus;
              Abort;
           end;


         if ( DBLkCBDoneStatusTitle.KeyValue = 2 ) and //(Dm.Select_FollowUP_By_CustomerIDDoneStatusID.Value = 2) and
            ((Dm.Select_FollowUP_By_CustomerIDStatusSaveDate.Value = Null) or
             (Dm.Select_FollowUP_By_CustomerIDStatusSaveDate.AsString = '') or
             (Trim(DBTextStatusSaveDate.Caption )= '') )then
         begin
            TempDate := dm.GetSql( ' select getdate() ' );
            Dm.Select_FollowUP_By_CustomerIDStatusSaveDate.Value := ShamsiString(TempDate);
            Dm.Select_FollowUP_By_CustomerIDStatusSaveDateTime.Value := TempDate;

            if Dm.Select_FollowUP_By_CustomerIDDoneDate.AsString = '' then
              Dm.Select_FollowUP_By_CustomerIDDoneDate.Value  := ShamsiString(TempDate);
         end;
         

         if State = dsInsert then
         begin
            if DBLkCBActionTypeTitle.KeyValue > 0 then
            begin
               Dm.Select_FollowUP_By_CustomerIDActionTypeID.AsInteger := DBLkCBActionTypeTitle.KeyValue;
            end;

            dm.Select_FollowUP_By_CustomerIDComputerName.AsString := UpperCase(_ComputerName) ;
            dm.Select_FollowUP_By_CustomerIDIPAddress.AsString    := _IpAddress ;

            Dm.Select_FollowUP_By_CustomerIDFollowUpInsertDate.Value := ShamsiString(Now);

            IsInEditMode := false; // Amin 1391/12/26

         end
         else
         begin
            IsInEditMode := true; // Amin 1391/12/26
            IndicatorID := dm.Select_FollowUP_By_CustomerIDFollowUPID.AsInteger; // Amin 1391/12/26

            if _accessID in [4,7,19] then //  ����� ����
            begin
              if DBLkCBDoneStatusTitle.KeyValue = 2 then
              begin
                 if (dm.Select_FollowUP_By_CustomerIDActionTypeID.Value in [78,8,62] ) then
                 begin
                   if MessageDlg('��� �� ������ ���� ������ ���� ����� ���Ͽ' + ' ' + edtAmount.Text  ,
                     mtConfirmation, [mbYes, mbNo], 0) = mryes then
                   begin
                     InputValue := InputBox('���� ���� ���� ��� ','������ ����','');
                     Isnumber := True;
                     for indx :=1 to Length(InputValue) do
                     begin
                       if not (InputValue[indx] in ['0'..'9']) then
                       begin
                          Isnumber := False;
                          break;
                       end;
                     end;
                     if Isnumber then
                     begin
                       Qry_SetResult('UPDATE dbo.Customer   '+
                             ' SET Priceestimate = '+InputValue  +
                             ' where customerid = '+IntToStr( Select_customer_By_CustomerIDCustomerID.ASInteger) ,dm.YeganehConnection);
                             edtAmount.Text :=   InputValue ;
                     end
                     else showmessage('���� ��� ������ ���� ��� ��� ���� ����')
                   end;
                 end;
              end;
            end;  
         end;



         if not(Select_customer_By_CustomerIDCustomerStatusID.AsInteger in [1,2]) then
         begin
            ShowMessage('����� ��� ����� �� ��� ����� ���� ��� ��� ���� � ����� ���� �� ��� ���');
            Abort;
         end
         else
         begin
               //FieldByName('CustomerId').Value := Select_customer_By_CustomerIDCustomerID.Value;
//                _ToDoDate:= edtToDoDate.Text;
           Dm.Select_FollowUP_By_CustomerIDParentMarketerID.AsInteger := _MarketerID ;

           ButtonName := '' ;
           if State in [dsEdit] then
             ButtonName  := 'Edit';

           Post;

           if (ButtonName <> '') and (dm.Select_FollowUP_By_CustomerIDFollowUPID.AsString <> '') then
             Qry_SetResult('Insert into dbo.ActivityUser_Log(CustomerID,FollowupID,UserId,Date,FormName,Activity,ComputerName,IPAddress) select '+Select_Customer_By_CustomerIDCustomerID.AsString+','+dm.Select_FollowUP_By_CustomerIDFollowUPID.AsString+','+ Dm.UserId.AsString + ',getdate(),''FrFollowUp'','''+ButtonName+''', '''+UpperCase(_ComputerName) +''','''+_IpAddress +'''' ,dm.YeganehConnection);



           Close;
           Open;

            // Amin 1391/12/26 Start
            if IsInEditMode then
               dm.Select_FollowUP_By_CustomerID.Locate('FollowUPID', IndicatorID, [loCaseInsensitive])
            else
               Dm.Select_FollowUP_By_CustomerID.Last;
            // Amin 1391/12/26 End
         end;
         
         (*
        if DBLkCBActionTypeTitle.KeyValue > 0 then
        begin

          if (DBLkCBActionTypeTitle.KeyValue >14) and (DBLkCBActionTypeTitle.KeyValue <19) then //in (15,16,17,18)) then
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
            SpSelect_CasesCasePriorityId.Value := 1; // ������
            SpSelect_CasesCaseTypeID .Value := 3; // ��� ���
            SpSelect_CasesCustomerID .Value := Select_customer_By_CustomerIDCustomerID.Value ; // ����� �����
            if ((Pos('|',Select_customer_By_CustomerIDProductsIdSTR.AsString)=0) AND (Select_customer_By_CustomerIDProductsIdSTR.AsString <>'')) then
              SpSelect_CasesProductId.Value := Select_customer_By_CustomerIDProductsIdSTR.AsInteger ;
            SpSelect_CasesCaseTitle.Value := '���_' + DBLkCBActionTypeTitle.Text +'_'+ ' ����� �� �����';
            SpSelect_CasesComment.Value := DBMemoComment.Text ;

            SpSelect_Cases.Post;
             //////

          end;

        end;  *)

      end;

      if ( DBLkCBDoneStatusTitle.KeyValue = 2) and (dm.Select_FollowUP_By_CustomerIDActionTypeID.Value in [75,76] ) and
        ((Dm.Select_FollowUP_By_CustomerIDExcellAttachment.IsNull) and
        (Dm.Select_FollowUP_By_CustomerIDPicAttachment.IsNull) and
        (Dm.Select_FollowUP_By_CustomerIDWordAttachment.IsNull) and
        (Dm.Select_FollowUP_By_CustomerIDPdfAttachment.IsNull)) then
      begin
          ShowMessage('��� ����� �� (��� ��� ����� ���� �� ����� ����) ');
      end
      else
      begin
        Qry_SetResult('UPDATE dbo.Customer   '+
                 ' SET ActionType_LevelID = [dbo].[fn_GetCurrentStateCustomerActionType_LevelID]('+IntToStr( Select_customer_By_CustomerIDCustomerID.ASInteger) +')   '+
                 ' where customerid = '+IntToStr( Select_customer_By_CustomerIDCustomerID.ASInteger) ,dm.YeganehConnection);
        ShowMessage(' ��� ����� �� ');
      end;

     if not (UpperCase(_AreYouYeganeh) = UpperCase('True')) then
     begin
        treFollowUps.DataSource:= Dm.DSelect_FollowUP_By_CustomerID;
        treFollowUps.Refresh;
     end;

     BitBtn2.Enabled        := True;
     btnDelEghdamat.Enabled := True;
     BitBtn1.Enabled        := True;
     Edited := True;
     pnlStateCustomer.Enabled := True ;
     EnableButtom('OK');     
    //  treFollowUps.Refresh;  // Amin 1391/08/25
      {// Amin 1391/12/23 treFollowUps.DataSource:= Dm.DSelect_FollowUP_By_CustomerID;  // Amin 1391/08/25 }
end;

procedure TFrFollowUp.AexitExecute(Sender: TObject);
begin
  inherited;
//close
end;

procedure TFrFollowUp.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if dm.Select_FollowUP_By_CustomerID.State in [dsinsert,dsedit] then
      begin
        dm.Select_FollowUP_By_CustomerID.Cancel;
        {// Amin 1391/12/23 treFollowUps.DataSource:= Dm.DSelect_FollowUP_By_CustomerID;  // Amin 1391/08/25}
        if not (UpperCase(_AreYouYeganeh) =UpperCase('True')) then
        begin
           treFollowUps.DataSource:= Dm.DSelect_FollowUP_By_CustomerID;
           treFollowUps.Refresh;
        end;
        canclose :=false;
      end;

end;

function TFrFollowUp.LoadImageField(Field: TField; Path: String): Boolean;
begin
   if not Field.IsNull then
    begin
           TBlobField(Field).SaveToFile(path);
           Result := True;
    end else
    begin
      ShowMessage('����� ����� ����');
      Result := False
    end;
end;

procedure TFrFollowUp.btnJpegViewClick(Sender: TObject);
var Path :String;
   MyBitmap: TBitmap;
begin
  inherited;
  if Trim(dm.Select_FollowUP_By_CustomerIDPicAttachmentType.AsString) = '' then
    Path := Directory+'FollowUp'+dm.Select_FollowUP_By_CustomerIDFollowUPID.AsString+Replace(dm.Select_FollowUP_By_CustomerIDToDoDate.AsString,'/','-')+'.jpg'
  else
  begin
    Path := Directory+'FollowUp'+dm.Select_FollowUP_By_CustomerIDFollowUPID.AsString+Replace(dm.Select_FollowUP_By_CustomerIDToDoDate.AsString,'/','-')+ Trim(dm.Select_FollowUP_By_CustomerIDPicAttachmentType.AsString);
  end;

  if LoadImageField(dm.Select_FollowUP_By_CustomerIDPicAttachment,path) then
  begin
     if _IsWinServer then
     begin
        try
//              if ImageForm=nil then ImageForm:=TImageForm.Create(Application);
          ImageForm:=TImageForm.Create(Application);
          if Trim(dm.Select_FollowUP_By_CustomerIDPicAttachmentType.AsString) = '.tif' then
          begin
            try
             // MyBitmap:= Dm.ReadTiffIntoBitmap(Path);
              ImageForm.Image1.Picture.Assign(MyBitmap);
            finally
              MyBitmap.Free;
            end;
          end
          else  ImageForm.Image1.Picture.LoadFromFile(path);

          ImageForm.ShowModal;
//              ImageForm.Free;
//              ImageForm:=nil;
        except on e:exception do
            ShowMessage(e.Message);
        end;
     end
     else
        ShellExecute(0,'open',pchar(Trim(path) ),'',nil,SW_HIDE);
  end;
end;

procedure TFrFollowUp.FormCreate(Sender: TObject);
begin

  inherited;
   Edited := False ;
   With dm.ActionTypeByUserType do
   begin
     Close;

     if _accessID in [4,7,19] then //  ����� ����
     begin
       SQL.Text := ' Select * from dbo.ActionType  WITH(NOLOCK)  Where ( UserTypeId = '+IntToStr(_UserTypeID)+' or (UserTypeId is null) or '+IntToStr(_UserTypeID)+'= 0 )'+
       ' and  isnull(SortOrderInSale ,0) >0  order by SortOrderInSale ' ;

     end
     else
     if _accessID in [10,11] then //  ����� ���� �����
     begin
       SQL.Text := ' Select * from dbo.ActionType  WITH(NOLOCK)  Where ( UserTypeId = '+IntToStr(_UserTypeID)+' or (UserTypeId is null) or '+IntToStr(_UserTypeID)+'= 0 )' +
       ' and  isnull(SortOrderInOfficial ,0) >0  order by SortOrderInOfficial ' ;
     end
     else
     if _accessID in [9,6,15] then // ����� ���� ��������
     begin
       SQL.Text := ' Select * from dbo.ActionType  WITH(NOLOCK)  Where ( UserTypeId = '+IntToStr(_UserTypeID)+' or (UserTypeId is null) or '+IntToStr(_UserTypeID)+'= 0 )' +
       ' and  isnull(SortOrderInSupport ,0) >0  order by SortOrderInSupport ' ;
     end
     else
       SQL.Text := ' Select * from dbo.ActionType  WITH(NOLOCK)  Where (UserTypeId = '+IntToStr(_UserTypeID)+' or (UserTypeId is null) or '+IntToStr(_UserTypeID)+'= 0 )' ;

     Open;
   end;

   Directory := ExtractFilePath(Application.ExeName)+'DataFile\';
   if not DirectoryExists(Directory) then
          MkDir(Directory);
end;

procedure TFrFollowUp.btnShowContractWordClick(Sender: TObject);
begin
  inherited;
  if _ExportFollow then
  begin
    dbgFollow.PrintTitle := ' ���� ������� '+Select_customer_By_CustomerIDCompanyName.AsString +' �� ������ '+Select_customer_By_CustomerIDPersonTitle.AsString+'^'
                            + ' �� ����� ���� :  '+Select_customer_By_CustomerIDPhone.AsString;
      if Select_customer_By_CustomerIDWorkPhone1.AsString <> '' then dbgFollow.PrintTitle:= dbgFollow.PrintTitle + ' , '+Select_customer_By_CustomerIDWorkPhone1.AsString;
      if Select_customer_By_CustomerIDFaxNumber .AsString <> '' then dbgFollow.PrintTitle:= dbgFollow.PrintTitle + '  ��� ' +Select_customer_By_CustomerIDFaxNumber.AsString;
//      if Select_customer_By_CustomerIDAddress .AsString <> '' then dbgFollow.PrintTitle:= dbgFollow.PrintTitle + #13+'  ���� ' +Select_customer_By_CustomerIDAddress.AsString;
    dbgFollow.ExportToWord
  end
  else ShowMessage('��� ���� ����� ����� ��  ������� �� ������');
end;

procedure TFrFollowUp.edtToDoDateChange(Sender: TObject);
begin
  inherited;
//   Day.Caption:= edtToDoDate.DayName;
//   _ToDoDate:= edtToDoDate.Text;
end;

procedure TFrFollowUp.edtDoneDateChange(Sender: TObject);
begin
  inherited;
//   DayOfWeek.Caption:= edtDoneDate.DayName;
//  _DoneDate:= edtDoneDate.Text;
end;

procedure TFrFollowUp.FormShow(Sender: TObject);
//var
 // PinValue : string;
begin
  inherited;

  //refreshData ;
  followUpItem.ItemIndex := _orgID ;

  xpPanel1.Minimized := True;

  pnlFactor.Visible := _UserFactorAccess ;
  dbgFollow.Columns[9].Visible  := _UserFactorAccess ;
  dbgFollow.Columns[10].Visible := _UserFactorAccess ;
  SetColorForm ;

  if UpperCase(_AreYouYeganeh) =UpperCase('True') then
  begin
   treFollowUps.DataSource:= nil;
   GroupBox3.Visible := false;
   btnAddSub.Visible := false;
   chkShowAllFollowUps.Visible := false;
  end
  else
     treFollowUps.DataSource:= Dm.DSelect_FollowUP_By_CustomerID;

  dbgFollow.SetFocus;
  if Trim(DBEdit9.Text)='' then lblDate1.Caption:='';
  if Trim(DBEdit10.Text)='' then lblDate2.Caption:='';

    Dm.Marketer.Close;
    Dm.Marketer.SQL.Clear;
    Dm.Marketer.SQL.Add('SELECT * FROM dbo.VW_Marketer  WITH(NOLOCK) ORDER BY OrderByID ');
    //////Dm.Marketer.SQL.Add('WHERE IsActive_=1');
    Dm.Marketer.Open;

   if dbgFollow.DataSource.DataSet.RecordCount >0  then
     dbgFollow.DataSource.DataSet.Locate('FollowUPID',FUID,[]);


  Dm.RefreshHoliday(copy(_today,1,4));
  MssCalendarPro1.HolidayStr := dm.HolidayStr;

  if not gbInformationSale.Visible then
  begin
    GroupBox1.Height := GroupBox1.Height - gbInformationSale.Height ;
  end;

  { TODO -oparsa : 14030205 }
  Pin.Visible    := (PinValue = '') ;
  UnPin.Visible  := not Pin.Visible  ;
  { TODO -oparsa : 14030205 }

  BitBtn2.Enabled        := (dbgFollow.DataSource.DataSet.RecordCount > 0);
  btnDelEghdamat.Enabled := (dbgFollow.DataSource.DataSet.RecordCount > 0);
  BitBtn1.Enabled        := (dbgFollow.DataSource.DataSet.RecordCount > 0);

 // if GetActionAccess(_accessID,'acpnlCustomerStatus',1) = False  then
 //   btnChangeStateCustomer.Enabled := Select_Customer_By_CustomerIDCustomerStatusID.asInteger <> 2 ;

  EnableButtom('FIRST');
end;

procedure TFrFollowUp.edtToDoDateKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (key in ['0'..'9',char(VK_Delete)]) then
  begin
       if not (Dm.Select_FollowUP_By_CustomerID.state in [dsinsert,dsedit]) then
               Dm.Select_FollowUP_By_CustomerID.edit;
       //Dm.Select_FollowUP_By_CustomerIDToDoDate.Value := edtToDoDate.Text;
  end else key :=#0;


end;

procedure TFrFollowUp.edtDoneDateKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key in ['0'..'9',char(VK_delete)] then
  begin
       if not (Dm.Select_FollowUP_By_CustomerID.state in [dsinsert,dsedit]) then
               Dm.Select_FollowUP_By_CustomerID.edit;
    //   Dm.Select_FollowUP_By_CustomerIDDoneDate.Value := edtDoneDate.Text
  end else key :=#0;
end;

procedure TFrFollowUp.CBNextKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  key :=#0;
end;

procedure TFrFollowUp.N1Click(Sender: TObject);
var Index:integer;
begin
  inherited;

  with dm do
    begin
      Case TMenuItem(Sender).GroupIndex of
         0..4: Select_FollowUP_By_CustomerIDToDoDate.Value := ShamsiIncDate(_Today,0,0,TMenuItem(Sender).GroupIndex);
         5:    Select_FollowUP_By_CustomerIDToDoDate.Value := ShamsiIncDate(_Today,0,0,8-ShamsidayInWeek(_today));
         6:    Select_FollowUP_By_CustomerIDToDoDate.Value := ShamsiIncDate(_Today,0,0,7);
         7:    Select_FollowUP_By_CustomerIDToDoDate.Value := ShamsiIncDate(_Today,0,0,14);
         8:    Select_FollowUP_By_CustomerIDToDoDate.Value := ShamsiIncDate(_Today,0,1,0);
      end;
      DBLkCBActionTypeTitle.SetFocus;
   end;
end;

procedure TFrFollowUp.btnSrchFollowClick(Sender: TObject);
begin
  inherited;
  refreshData ;

end;

procedure TFrFollowUp.btnJpegClearClick(Sender: TObject);
begin
  inherited;
  if not (Dm.Select_FollowUP_By_CustomerIDPicAttachment.IsNull) then
  begin
  if messagedlg('���� ��� ���� ����� ����� �',mtWarning,[mbYes,mbAll,mbCancel], 0) = 6 then
  begin
  dm.Select_FollowUP_By_CustomerID.Edit;
  dm.Select_FollowUP_By_CustomerIDPicAttachment.Clear;
  dm.Select_FollowUP_By_CustomerID.post;
  end;
  end
  else
  ShowMessage('����� �� ��� ژ� ����');
end;

procedure TFrFollowUp.btnWordClearClick(Sender: TObject);
begin
  inherited;
  if not (Dm.Select_FollowUP_By_CustomerIDWordAttachment.IsNull) then
  begin
  if messagedlg('���� ��� ���� ����� ����� �',mtWarning,[mbYes,mbAll,mbCancel], 0) = 6 then
  begin
  dm.Select_FollowUP_By_CustomerID.Edit;
  dm.Select_FollowUP_By_CustomerIDWordAttachment.Clear;
  dm.Select_FollowUP_By_CustomerID.Post
  end;
  end
  else
  ShowMessage('����� �� ��� ��� ����');
end;

procedure TFrFollowUp.dbgFollowNeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;

  if (Dm.Select_FollowUP_By_CustomerIDActionTypeID.AsInteger in  [78,62] ) then
       Color:= TColor(RGB(255, 201, 14));


  if (Dm.Select_FollowUP_By_CustomerIDActionTypeID.AsInteger in  [37,7,64] ) then
       Color:= TColor(RGB(210, 166, 255));


  if not (Dm.Select_FollowUP_By_CustomerIDExcellAttachment.IsNull) then
            Color:= TColor(RGB(250, 170, 49));

  if not (Dm.Select_FollowUP_By_CustomerIDPicAttachment.IsNull) then
            Color:=$00ffd683;
            //Color:= TColor(RGB(245, 184, 0));
            //Color:=$0077f983 ;

  if not (Dm.Select_FollowUP_By_CustomerIDWordAttachment.IsNull) then
            Color:= TColor(RGB(85, 232, 105));
            //Color:=$00ffd683 ;

  if not (Dm.Select_FollowUP_By_CustomerIDPdfAttachment.IsNull) then
            Color:= clred;//TColor(RGB(85, 232, 105));

  if ((not Dm.Select_FollowUP_By_CustomerIDWordAttachment.IsNull) and (not Dm.Select_FollowUP_By_CustomerIDPicAttachment.IsNull) and (not Dm.Select_FollowUP_By_CustomerIDExcellAttachment.IsNull))
      or
      ((not Dm.Select_FollowUP_By_CustomerIDWordAttachment.IsNull) and (not Dm.Select_FollowUP_By_CustomerIDPicAttachment.IsNull))
      or
      ((not Dm.Select_FollowUP_By_CustomerIDPicAttachment.IsNull) and (not Dm.Select_FollowUP_By_CustomerIDExcellAttachment.IsNull))
      or
      ((not Dm.Select_FollowUP_By_CustomerIDWordAttachment.IsNull) and (not Dm.Select_FollowUP_By_CustomerIDExcellAttachment.IsNull))
      then
            //Color:= TColor(RGB(255, 102, 51));
      Color:=$00d4acfd ;

end;

procedure TFrFollowUp.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if (Dm.Select_FollowUP_By_CustomerID.State = dsInsert) or (Dm.Select_FollowUP_By_CustomerID.State = dsEdit) then
      Dm.Select_FollowUP_By_CustomerIDToDoDate.AsString:= MssCalendarPro1.Execute('/')
  else
      ShowMessage('���� �� ���� ������ �� ��� ������� �����');
end;

procedure TFrFollowUp.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if (Dm.Select_FollowUP_By_CustomerID.State = dsInsert) or (Dm.Select_FollowUP_By_CustomerID.State = dsEdit) then
      Dm.Select_FollowUP_By_CustomerIDDoneDate.AsString:= MssCalendarPro1.Execute('/')
  else
      ShowMessage('���� �� ���� ������ �� ��� ������� �����');
end;

procedure TFrFollowUp.DBEdit9Change(Sender: TObject);
begin
  inherited;
  if Trim(DBEdit9.Text)='' then lblDate1.Caption:=''
  else
    case ShamsidayInWeek(Trim(DBEdit9.Text)) of
      0:lblDate1.Caption:='����';
      1:lblDate1.Caption:='����';
      2:lblDate1.Caption:='�����';
      3:lblDate1.Caption:='������';
      4:lblDate1.Caption:='�� ����';
      5:lblDate1.Caption:='��������';
      6:lblDate1.Caption:='��� ����';
    end;
end;

procedure TFrFollowUp.Button1Click(Sender: TObject);
begin
  inherited;
  if (Dm.Select_FollowUP_By_CustomerID.State=dsInsert) or (Dm.Select_FollowUP_By_CustomerID.State=dsEdit) then
      Dm.Select_FollowUP_By_CustomerIDToDoDate.AsString:=ShamsiIncDate(DBEdit9.Text,0,0,1)
  else
      ShowMessage('���� �� ���� ������ �� ��� ������� �����');
end;

procedure TFrFollowUp.Button2Click(Sender: TObject);
begin
  if (Dm.Select_FollowUP_By_CustomerID.State=dsInsert) or (Dm.Select_FollowUP_By_CustomerID.State=dsEdit) then
      Dm.Select_FollowUP_By_CustomerIDToDoDate.AsString:=ShamsiIncDate(DBEdit9.Text,0,0,-1)
  else
      ShowMessage('���� �� ���� ������ �� ��� ������� �����');
end;

procedure TFrFollowUp.Button4Click(Sender: TObject);
begin
  inherited;
  if (Dm.Select_FollowUP_By_CustomerID.State=dsInsert) or (Dm.Select_FollowUP_By_CustomerID.State=dsEdit) then
  begin
     if (trim(DBEdit10.Text) = '') then
       Dm.Select_FollowUP_By_CustomerIDDoneDate.AsString:=ShamsiIncDate(_today,0,0,1)
     else
      Dm.Select_FollowUP_By_CustomerIDDoneDate.AsString:=ShamsiIncDate(DBEdit10.Text,0,0,1);
      
  end
  else
      ShowMessage('���� �� ���� ������ �� ��� ������� �����');
end;

procedure TFrFollowUp.Button3Click(Sender: TObject);
begin
  inherited;
  if (Dm.Select_FollowUP_By_CustomerID.State=dsInsert) or (Dm.Select_FollowUP_By_CustomerID.State=dsEdit) then
     if (trim(DBEdit10.Text) = '') then
       Dm.Select_FollowUP_By_CustomerIDDoneDate.AsString:=ShamsiIncDate(_today,0,0,-1)
     else
      Dm.Select_FollowUP_By_CustomerIDDoneDate.AsString:=ShamsiIncDate(DBEdit10.Text,0,0,-1)
  else
      ShowMessage('���� �� ���� ������ �� ��� ������� �����');
end;

procedure TFrFollowUp.DBEdit10Change(Sender: TObject);
begin
  inherited;
  if Trim(DBEdit10.Text)='' then lblDate2.Caption:=''
  else
    case ShamsidayInWeek(Trim(DBEdit10.Text)) of
      0:lblDate2.Caption:='����';
      1:lblDate2.Caption:='����';
      2:lblDate2.Caption:='�����';
      3:lblDate2.Caption:='������';
      4:lblDate2.Caption:='�� ����';
      5:lblDate2.Caption:='��������';
      6:lblDate2.Caption:='��� ����';
    end;
end;

procedure TFrFollowUp.acDelEghdamatExecute(Sender: TObject);
var
  ID:Integer;
begin
  inherited;

  if Dm.Select_FollowUP_By_CustomerIDIsAuto.AsBoolean then
  begin
    ShowMessage('����  � ��� ј������ ��� ��� ���� ����� ���� �����');
    Exit;
  end
  else
  if not _ManagerOfficial then   //ǐ� ���� ���� ����� ����
    if (Dm.Select_FollowUP_By_CustomerIDMarketerID.AsInteger <> _MarketerID) then
    begin
      ShowMessage('���� ��� � ������ ������� ����� �� ������� ��� ���� �����');
      Exit;
    end;
    
  EnableButtom('DEL');

  IF MessageDlg('��� �� ��� ������� ����� ����Ͽ',mtConfirmation,[mbyes,mbno],0)=mryes then
  Begin
     if  Dm.Select_FollowUP_By_CustomerIDFollowUPID.AsString <> '' then
     begin

       Qry_SetResult('Insert into dbo.ActivityUser_Log(CustomerID,FollowupID,UserId,Date,FormName,Activity,ComputerName,IPAddress) select '+Select_Customer_By_CustomerIDCustomerID.AsString+','+dm.Select_FollowUP_By_CustomerIDFollowUPID.AsString+','+ Dm.UserId.AsString + ',getdate(),''FrFollowUp'','''+'Delete'+''', '''+UpperCase(_ComputerName) +''','''+_IpAddress +'''' ,dm.YeganehConnection);

       Qry_SetResult(' Delete From Followup Where FollowUpID = '+Dm.Select_FollowUP_By_CustomerIDFollowUPID.AsString ,Dm.YeganehConnection)
     end
     else if dm.Select_FollowUP_By_CustomerID.State in [dsinsert,dsedit]  then
     begin
       dm.Select_FollowUP_By_CustomerID.Cancel;
     end;
     Dm.Select_FollowUP_By_CustomerID.Prior;
     ID := Dm.Select_FollowUP_By_CustomerIDFollowUPID.Value;
     Dm.Select_FollowUP_By_CustomerID.Next;
     Dm.Select_FollowUP_By_CustomerID.Requery;
     Dm.Select_FollowUP_By_CustomerID.Locate('FollowUPID',id,[]);
     treFollowUps.Refresh;  // Amin 1391/08/25
  End;

  Qry_SetResult('UPDATE dbo.Customer   '+
           ' SET ActionType_LevelID = [dbo].[fn_GetCurrentStateCustomerActionType_LevelID]('+IntToStr( Select_customer_By_CustomerIDCustomerID.ASInteger) +')   '+
           ' where customerid = '+IntToStr( Select_customer_By_CustomerIDCustomerID.ASInteger) ,dm.YeganehConnection);

  Edited := True ;
  EnableButtom('OK');        
end;

procedure TFrFollowUp.dbgFollowCellClick(Column: TColumn);
begin
  inherited;
   // Amin 1391/10/18 Start
   if (dm.Select_FollowUP_By_CustomerID2.Active) and (dm.Select_FollowUP_By_CustomerID.Active) and
      (dm.Select_FollowUP_By_CustomerID2.FieldByName('FollowUpID').Value <> Null) and (not chkShowAllFollowUps.Checked)then
   begin
      Dm.CanDataChange := false;    // Amin 1391/10/18
      dm.Select_FollowUP_By_CustomerID.Locate('FollowUpID', dm.Select_FollowUP_By_CustomerID2.FieldByName('FollowUpID').Value, [loPartialKey]);
   end
   // Amin 1391/10/18 End
end;

procedure TFrFollowUp.treFollowUpsChange(Sender: TObject; Node: TTreeNode);
begin
  inherited;
   Dm.CanDataChange := true;    // Amin 1391/10/18
end;

procedure TFrFollowUp.chkShowAllFollowUpsClick(Sender: TObject);
begin
  inherited;
   // Amin 1391/10/18 Start
   IF chkShowAllFollowUps.Checked then
      dbgFollow.DataSource := Dm.DSelect_FollowUP_By_CustomerID
   else
      dbgFollow.DataSource := dm.DSelect_FollowUP_By_CustomerID2;
   // Amin 1391/10/18 End
end;

procedure TFrFollowUp.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  AddImageField(dm.Select_FollowUP_By_CustomerIDExcellAttachment,'Excell Files|*.xls;*.xlsx');
end;

procedure TFrFollowUp.SpeedButton4Click(Sender: TObject);
var Path :String;
begin
  inherited;
   Path := Directory+'FollowUp'+dm.Select_FollowUP_By_CustomerIDFollowUPID.AsString+Replace(dm.Select_FollowUP_By_CustomerIDToDoDate.AsString,'/','-')+'.xls';
   if LoadImageField(dm.Select_FollowUP_By_CustomerIDExcellAttachment,path) then
   begin
   dm.OpenExcelFile(path);

   if UpperCase(MssMessage1.execute('��� ������� �� ���� ��� ����� ��Ͽ'))=UpperCase('Ok') then
   begin
      try
       dm.Select_FollowUP_By_CustomerID.DisableControls;
         if (dm.Select_FollowUP_By_CustomerID.State<>dsEdit) or (dm.Select_FollowUP_By_CustomerID.State<>dsInsert) then
              dm.Select_FollowUP_By_CustomerID.Edit;
         dm.Select_FollowUP_By_CustomerIDWordAttachment.LoadFromFile(Path);
         dm.Select_FollowUP_By_CustomerID.Post;
       dm.Select_FollowUP_By_CustomerID.EnableControls;
       except
         dm.Select_FollowUP_By_CustomerID.EnableControls;
       end;
   end;

   end;
end;

procedure TFrFollowUp.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if not (Dm.Select_FollowUP_By_CustomerIDExcellAttachment.IsNull) then
  begin
  if messagedlg('���� ��� ���� ����� ����� �',mtWarning,[mbYes,mbAll,mbCancel], 0) = 6 then
  begin
    dm.Select_FollowUP_By_CustomerID.Edit;
    dm.Select_FollowUP_By_CustomerIDExcellAttachment.Clear;
    dm.Select_FollowUP_By_CustomerID.Post;
  end;
  end
  else
  ShowMessage('����� �� ��� ǘ�� ����');
end;

procedure TFrFollowUp.SpeedButton12Click(Sender: TObject);
begin
  inherited;
  AddImageField(dm.Select_FollowUP_By_CustomerIDPdfAttachment,'Pdf Files|*.pdf');
end;

procedure TFrFollowUp.SpeedButton10Click(Sender: TObject);
begin
  inherited;
  if not (Dm.Select_FollowUP_By_CustomerIDPdfAttachment.IsNull) then
  begin
  if messagedlg('���� ��� ���� ����� ����� �',mtWarning,[mbYes,mbAll,mbCancel], 0) = 6 then
  begin
    dm.Select_FollowUP_By_CustomerID.Edit;
    dm.Select_FollowUP_By_CustomerIDPdfAttachment.Clear;
    dm.Select_FollowUP_By_CustomerID.Post;
  end;
  end
  else
  ShowMessage('����� �� ��� ���� �� �� �� ����');
end;

procedure TFrFollowUp.SpeedButton11Click(Sender: TObject);
var
 Path : String;
begin
  inherited;
   Path := Directory+'FollowUp'+dm.Select_FollowUP_By_CustomerIDFollowUPID.AsString+Replace(dm.Select_FollowUP_By_CustomerIDToDoDate.AsString,'/','-')+'.pdf';
   if LoadImageField(dm.Select_FollowUP_By_CustomerIDPdfAttachment,path) then
   begin
   ShellExecute(Handle, nil, PChar(Path), nil,  nil, SW_SHOWNORMAL);
   end;
end;

procedure TFrFollowUp.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  { TODO -oparsa : 14030203 }
  if (NewWidth < 1106)  or (NewHeight < 714) then
    Resize := False
  else Resize := True;
   { TODO -oparsa : 14030203 }
  inherited;

end;

procedure TFrFollowUp.PinClick(Sender: TObject);
var
  qry: TADOQuery;
  pinfollow : String ;
begin
  inherited;
  Pin.Visible    := not Pin.Visible ;
  UnPin.Visible  := not UnPin.Visible  ;

  qry := TADOQuery.Create(self);
  qry.Connection := dm.YeganehConnection;
  qry.CommandTimeout := 1200;

  if not UnPin.Visible then
  begin

    qry.SQL.Text   := ' IF EXISTS ( SELECT 1 FROM dbo.usersPinFollowUP  WITH(NOLOCK)  WHERE CustomerID = '+ DBEdit4.text +' AND  UserID = '+IntToStr(_UserId )+') ' +
                      '   DELETE FROM dbo.usersPinFollowUP WHERE CustomerID = '+ DBEdit4.text +'  AND  UserID = '+ IntToStr(_UserId );

  end
  else
  begin
    pinfollow :=   Qry_GetResult(' select count(customerid) FROM dbo.usersPinFollowUP  WITH(NOLOCK)  WHERE  UserID = '+ IntToStr(_UserId )  ,dm.YeganehConnection) ;
    if pinfollow <> '5' then
    begin
      qry.SQL.Text   := '   INSERT INTO dbo.usersPinFollowUP (CustomerID,UserID) values('+ DBEdit4.text +' , '+ IntToStr(_UserId )+')';

    end
    else
    begin
      ShowMessage(' ���� ������ ���� �� 5 ј��� ��� ��� ���� �����');
      Pin.Visible    := not Pin.Visible ;
      UnPin.Visible  := not UnPin.Visible  ;
    end
  end ;

  if qry.SQL.Text <> '' then
    qry.ExecSQL;


  qry.Free;
  
  if _UserPinFollowUp then
  begin
    with Dm.Select_FollowUP_Pin do
     begin
       Close;
       Parameters.ParamByName('@UserID').Value:= _UserID;
       Open;
     end;
   end;

end;

procedure TFrFollowUp.SetColorForm;
begin
  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;

  xpPanel1.StartColor := _Color1 ;
  xpPanel1.EndColor   := _Color2 ;

  xpPanel1.TitleStartColor :=  _Color3;
  xpPanel1.TitleEndColor   :=  _Color4;

end;

procedure TFrFollowUp.btnRefrenceInPersonClick(Sender: TObject);
begin
  inherited;
  if not (dbgFollow.DataSource.DataSet.State in [dsEdit, dsInsert]) then
  begin
    if (dbgFollow.DataSource.DataSet.RecordCount >0 ) and (Dm.Select_FollowUP_By_CustomerIDActionTypeID.AsInteger in [ 19,20,21,22,23,26,45] ) then
    begin
      Application.CreateForm(TFRefrenceInPerson, FRefrenceInPerson);
      FRefrenceInPerson.FollowUpId  := dm.Select_FollowUP_By_CustomerIDFollowUPID.Asinteger ;
      FRefrenceInPerson.CustomerId  := dm.Select_FollowUP_By_CustomerIDCustomerID.Asinteger ;
      FRefrenceInPerson.ProductsIdSTR  := Select_customer_By_CustomerIDProductsIdSTR.AsString ;
      FRefrenceInPerson.DBECompanyName.Text := DBECompanyName.Text;
      FRefrenceInPerson.DBEProducts.Text    := DBEProducts.Text;
      FRefrenceInPerson.ShowModal;
      if Assigned(FRefrenceInPerson) then
      FreeAndNil(FRefrenceInPerson);
    end
    else MessageDlg('��� ��� ��� ������� ����� �� ����',mtConfirmation,[mbyes],0)
  end
  else MessageDlg('���� ����� ���� ��� ��� ���� Ӂ� ������ ����� �� ��� ������',mtConfirmation,[mbyes],0) ;
end;

procedure TFrFollowUp.btnFactorClick(Sender: TObject);
begin
  inherited;
  if(dbgFollow.DataSource.DataSet.RecordCount >0 ) and not (dbgFollow.DataSource.DataSet.State in [dsEdit, dsInsert]) then
  begin
    if dm.Select_FollowUP_By_CustomerIDIsFactor.AsBoolean or  dm.Select_FollowUP_By_CustomerIDIsPreFactor.AsBoolean then
    begin
      if dm.Select_FollowUP_By_CustomerIDIsFactor.AsBoolean and dm.Select_FollowUP_By_CustomerIDIsPreFactor.AsBoolean then
      begin
        MessageDlg('���� ��� � ���� �ǘ��� �� ��� �ǘ��� �� ������ ������',mtConfirmation,[mbyes],0);
        exit ;
      end;
      
      FMFactor := TFMFactor.Create(Application);

      if  dm.Select_FollowUP_By_CustomerIDIsPreFactor.AsBoolean then
        FMFactor.Hint := 'P'
      else FMFactor.Hint := 'F' ;

      FMFactor.FromFollowUp       := True ;
      FMFactor.ExternalFactorId   := dm.Select_FollowUP_By_CustomerIDFactorId.Asinteger ;
      FMFactor.ExternalCustomerId := dm.Select_FollowUP_By_CustomerIDCustomerID.Asinteger ;
      FMFactor.ShowModal;
      if (not (dbgFollow.DataSource.DataSet.State in [dsEdit, dsInsert])) and (FMFactor.ExternalFactorId <> FMFactor.PostFactorID ) then
      begin
        dbgFollow.DataSource.DataSet.Edit ;
        dm.Select_FollowUP_By_CustomerIDFactorId.Asinteger := FMFactor.PostFactorID;
        dbgFollow.DataSource.DataSet.post ;
      end;
    end
    else MessageDlg('���� �� �� ����� ��� �ǘ���/ ��� �ǘ��� ������ ������',mtConfirmation,[mbyes],0)
  end
  else MessageDlg('���� ����� ���� ��� ��� ���� Ӂ� �ǘ��� �� ��� ������',mtConfirmation,[mbyes],0)
end;

procedure TFrFollowUp.DBLMarketerTitleEnter(Sender: TObject);
begin
  inherited;
  Dm.Marketer.Filtered := False;
  Dm.Marketer.Filter := '';//' IsActive_=1 ' ;
  Dm.Marketer.Filtered := True;
end;

procedure TFrFollowUp.DBLMarketerTitleExit(Sender: TObject);
begin
  inherited;
  Dm.Marketer.Filtered := False;
  Dm.Marketer.Filter := '' ;
  Dm.Marketer.Filtered := True;
end;

procedure TFrFollowUp.BitBtn5Click(Sender: TObject);
begin
  inherited;
  dblMarketer.KeyValue := null;
end;

procedure TFrFollowUp.BitBtn6Click(Sender: TObject);
begin
  inherited;
  dblDoneStatusID.KeyValue := null
end;

procedure TFrFollowUp.BitBtn7Click(Sender: TObject);
begin
  inherited;
  DBLkCBActionTypeTitleSearch.KeyValue := null;
end;

procedure TFrFollowUp.btnViwCustomerClick(Sender: TObject);
begin
  inherited;
  propertiesForm := TPropertiesForm.Create(Application,Select_customer_By_CustomerIDCustomerID.AsInteger) ;
  PropertiesForm.Showmodal;
  if Assigned(PropertiesForm) then
    FreeAndNil(PropertiesForm);

  if GetActionAccess(_accessID,'acpnlCustomerStatus',1) = False  then
    btnChangeStateCustomer.Enabled := Select_Customer_By_CustomerIDCustomerStatusID.asInteger <> 2 ;
end;

procedure TFrFollowUp.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    If (Shift = [ssctrl]) and (inttostr(key) = '113') then   //f2
    begin     //edit
      if BitBtn2.Visible and BitBtn2.Enabled then
      if  dbgFollow.DataSource.DataSet.State  in [dsBrowse] then
        BitBtn2Click(BitBtn2);

    end
    else
    If (Shift = [ssctrl]) and (inttostr(key) = '116') then  //f5
    begin    //post
      if BitBtn1.Visible and BitBtn1.Enabled then
      if  dbgFollow.DataSource.DataSet.State in [dsEdit, dsInsert] then
       BitBtn1Click(BitBtn1);

    end
    else
    If (Shift = [ssctrl]) and (inttostr(key) = '78') then //n
    begin
           //new
      if btnAdd.Visible and btnAdd.Enabled then
      if  dbgFollow.DataSource.DataSet.State  in [dsBrowse] then
        btnAddClick(btnAdd);

    end
    else
    If (Shift = [ssctrl]) and (inttostr(key) = '117') then //f6
    begin
           // otherperson
      if OtherPeople.Visible and OtherPeople.Enabled then
      if  dbgFollow.DataSource.DataSet.State  in [dsBrowse] then
        OtherPeopleClick(OtherPeople);

    end
    else
    If (Shift = [ssctrl]) and (inttostr(key) = '118') then //f7
    begin
           // person
      if btnViwCustomer.Visible and btnViwCustomer.Enabled then
        btnViwCustomerClick(Sender);

    end;
end;

procedure TFrFollowUp.edtAmountChange(Sender: TObject);
var
   AmountSTR : string;
begin
  inherited;

  AmountSTR := StringReplace(edtAmount.Text,'�','',[rfReplaceAll]);

  if Length(AmountSTR)>3 then
    edtAmount.Text := AddSeprator(AmountSTR,length(AmountSTR) div 3)
  else  edtAmount.Text :=  AmountSTR ;
  edtAmount.SelStart := Length(edtAmount.Text);


end;

procedure TFrFollowUp.OtherPeopleClick(Sender: TObject);
begin
  inherited;
   FmOtherPerson := TFmOtherPerson.Create(nil);
   FmOtherPerson.CustomerID := Select_customer_By_CustomerIDCustomerID.AsInteger ;
   with FmOtherPerson.Select_Person_By_CustomerID do
   begin
      Close;
      Parameters.ParamByName('@customerID').Value := Select_customer_By_CustomerIDCustomerID.AsInteger;
      Open;
   end;
   FmOtherPerson.ShowModal;
end;

procedure TFrFollowUp.dbgFollowNeedImageIndex(Column: TColumn; var ImageIndex: Integer);
begin
  inherited;
  btnRefrenceInPerson.Visible := (Dm.Select_FollowUP_By_CustomerIDActionTypeID.AsInteger in [ 19,20,21,22,23,26,45] ) ;
end;

procedure TFrFollowUp.EnableButtom(amode: String);
begin
  if (amode = 'ADD') or (amode = 'EDIT') then
  begin
   btnAdd.Enabled    := False ;
   btnAddSub.Enabled := False ;
   BitBtn1.Enabled   := True ;
   btnDelEghdamat.Enabled := False ;
   BitBtn2.Enabled        := False ;
   GroupBox2.Enabled := False;
 end
 else if  amode = 'OK' then
 begin
   btnAdd.Enabled    := True ;
   btnAddSub.Enabled := True ;
   BitBtn1.Enabled   := False ;

   if Dm.Select_FollowUP_By_CustomerID.RecordCount>0  then
   begin
     btnDelEghdamat.Enabled := True ;
     BitBtn2.Enabled        := True ;
   end
   else
   begin
     btnDelEghdamat.Enabled := False ;
     BitBtn2.Enabled        := False ;
   end;
    GroupBox2.Enabled := True;
   // dbgFollow.Refresh;
  //  DBMemoComment.SetFocus ;

 end
 else if  amode = 'DEL' then
 begin
   btnAdd.Enabled    := False ;
   btnAddSub.Enabled := False ;
   BitBtn1.Enabled   := False ;
   btnDelEghdamat.Enabled := False ;
   BitBtn2.Enabled        := False ;
    GroupBox2.Enabled := False;
 end
 else if  amode = 'FIRST' then
 begin
   btnAdd.Enabled    := True ;
   btnAddSub.Enabled := False ;
   BitBtn1.Enabled   := False ;
   if Dm.Select_FollowUP_By_CustomerID.RecordCount>0  then
   begin
     btnDelEghdamat.Enabled := True ;
     BitBtn2.Enabled        := True ;
   end
   else
   begin
     btnDelEghdamat.Enabled := False ;
     BitBtn2.Enabled        := False ;
   end;
    GroupBox2.Enabled := True;
 end;

end;

procedure TFrFollowUp.SpeedButton13Click(Sender: TObject);
begin
  inherited;
// DBMemoDoneComment
  ClipBoard.AsText := DBMemoDoneComment.Text ;
end;

procedure TFrFollowUp.btnCopyClick(Sender: TObject);
begin
  inherited;
//DBMemoComment
  ClipBoard.AsText := DBMemoComment.Text ;
end;

constructor TFrFollowUp.create(AOwner: TComponent; ExCustomerID: Integer;
  IsItNewRecord: Boolean);
begin
  inherited create(AOwner);
   //  Edited       := false;
     CustomerID   := ExCustomerID;
   //  IsNewRecord  := IsItNewRecord
end;

end.


