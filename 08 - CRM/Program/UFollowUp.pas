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
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit3: TDBEdit;
    btnViwCustomer: TBitBtn;
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
    DBLookupComboBox1: TDBLookupComboBox;
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
    DBText1: TDBText;
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
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BtnCancel: TBitBtn;
    btnShowContractWord: TBitBtn;
    Label27: TLabel;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Splitter1: TSplitter;
    stb: TStatusBar;
    procedure btnWordViewClick(Sender: TObject);
    procedure btnAttachPicClick(Sender: TObject);
    procedure refreshData;
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure AexitExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnViwCustomerClick(Sender: TObject);
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
  private
   Function  LoadImageField(Field:TField;Path:String):Boolean;
   procedure SetColorForm ;
    { Private declarations }
  public
    { Public declarations }
       FUID : integer;
    CustomerID: integer;
  end;

var
 FrFollowUp: TFrFollowUp;

implementation

uses dmu, YShamsiDate, UContract, CancelCustomerU, Telinputunit, ImageUnit;

{$R *.dfm}

procedure TFrFollowUp.btnWordViewClick(Sender: TObject);
var Path :String;
begin
  inherited;
   Path := Directory+'FollowUp'+dm.Select_FollowUP_By_CustomerIDFollowUPID.AsString+Replace(dm.Select_FollowUP_By_CustomerIDToDoDate.AsString,'/','-')+'.doc';
   if LoadImageField(dm.Select_FollowUP_By_CustomerIDWordAttachment,path) then
   begin
   dm.OpenWordFile(path);

   if UpperCase(MssMessage1.execute('¬Ì«  €ÌÌ—«  œ— ›«Ì· Ê—œ «⁄„«· ‘Êœø'))=UpperCase('Ok') then
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
begin
  inherited;
  AddImageField(dm.Select_FollowUP_By_CustomerIDPicAttachment,'Picture Files|*.jpg');
  {
OpenDialog.Filter:='Jpeg Files|*.jpg';
 if OpenDialog.Execute then
   dm.Select_FollowUP_By_CustomerIDAttachment2.AsString:=OpenDialog.FileName;
   }
end;

procedure TFrFollowUp.refreshData;
begin
   inherited;
   with Select_customer_By_CustomerID do
   begin
      Close;
      Parameters.ParamByName('@customerid').Value:=CustomerID;
      Open;
      _gCustomerID :=  Select_customer_By_CustomerIDCustomerID.Value;      
   end;
   
   with dm.Select_FollowUP_By_CustomerID do
   begin
      Close;
      Parameters.ParamByName('@customerid').Value:=CustomerID;
      Parameters.ParamByName('@orgID').Value:=_orgID;

      Parameters.ParamByName('@DoneDate').Value:=Trim(BDate.Text);
      Parameters.ParamByName('@TodODate').Value:=Trim(EDate.Text);
if dblMarketer.KeyValue <> null then
      Parameters.ParamByName('@MarketerID').Value:= dblMarketer.KeyValue
      else       Parameters.ParamByName('@MarketerID').Value:= 0;
if dblDoneStatusID.KeyValue <> null then
      Parameters.ParamByName('@DoneStatusID').Value:= dblDoneStatusID.KeyValue
      else       Parameters.ParamByName('@DoneStatusID').Value:= 0;
      Open;
      stb.Panels[1].Text:=' ⁄œ«œ:' +IntToStr(RecordCount);
      //Last;
   end;
end;

procedure TFrFollowUp.BitBtn2Click(Sender: TObject);
begin
  inherited;

  treFollowUps.DataSource:= nil;  // Amin 1391/08/25
   dm.Select_FollowUP_By_CustomerID.Edit;
//     if not (UpperCase(_AreYouYeganeh) = UpperCase('True')) then
//     begin
//        treFollowUps.DataSource:= Dm.DSelect_FollowUP_By_CustomerID;
////      treFollowUps.Refresh;
//     end;
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

procedure TFrFollowUp.BitBtn4Click(Sender: TObject);
begin
  inherited;
FrCancelCustomer:=TFrCancelCustomer.Create(Application);
with FrCancelCustomer do
 begin
  CustomerID:=Dm.Select_FollowUP_By_CustomerIDCustomerID.AsInteger;
  RefreshData;
  ShowModal;
 end;
end;

procedure TFrFollowUp.BtnCancelClick(Sender: TObject);
begin
  inherited;
  close
end;

procedure TFrFollowUp.btnDelClick(Sender: TObject);
var Id:Integer;
begin
  Inherited;
  IF MessageDlg('¬Ì« «“ Õ–› «ÿ·«⁄«  „ÿ„∆‰ Â” Ìœø',mtConfirmation,[mbyes,mbno],0)=mryes then
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

   if not( Select_customer_By_CustomerIDCustomerStatusID.AsInteger  in [1,2])  then
   begin
      ShowMessage('Ê÷⁄Ì  «Ì‰ „‘ —Ì œ— Õ«· ÅÌêÌ—Ì ‰Ì”  ·–« ‰„Ì  Ê«‰ Ìò ÅÌêÌ—Ì »—«Ì ¬‰ À»  ò—œ');
      Exit;
   end;

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
   Dm.Select_FollowUP_By_CustomerID.insert;//Append;
   dm.Select_FollowUP_By_CustomerIDParentFollowUpID.Value := ParentID;   // Amin 1391/08/25
//   dm.Select_FollowUP_By_CustomerIDActionTypeID.Value := 1;
//   Dm.Select_FollowUP_By_CustomerIDCustomerID.AsInteger := CustomerID;
//   edtToDoDate.Text :=_Today;
   if not (UpperCase(_AreYouYeganeh) =UpperCase('True')) then
     begin
     //   treFollowUps.DataSource:= Dm.DSelect_FollowUP_By_CustomerID;
       // treFollowUps.Refresh;
     end;
end;

procedure TFrFollowUp.BitBtn1Click(Sender: TObject);
var
   IsInEditMode :boolean; // Amin 1391/12/26
   IndicatorID : integer; // Amin 1391/12/26
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
            ShowMyMessage('ÅÌ€«„','·ÿ›« ›Ì·œ "‰Ê⁄ ÅÌêÌ—Ì" —«  ⁄ÌÌ‰ ‰„«ÌÌœ',[mbOK],mtInformation);
            DBLkCBActionTypeTitle.SetFocus;
            DBLkCBActionTypeTitle.DropDown;
            Abort;
         end;

         if State = dsInsert then
         begin
            if DBLkCBActionTypeTitle.KeyValue > 0 then
               Dm.Select_FollowUP_By_CustomerIDActionTypeID.AsInteger := DBLkCBActionTypeTitle.KeyValue;

            Dm.Select_FollowUP_By_CustomerIDFollowUpInsertDate.Value := ShamsiString(Now);

            IsInEditMode := false; // Amin 1391/12/26
         end
         else
         begin
            IsInEditMode := true; // Amin 1391/12/26
            IndicatorID := dm.Select_FollowUP_By_CustomerIDFollowUPID.AsInteger; // Amin 1391/12/26
         end;

         if (Dm.Select_FollowUP_By_CustomerIDDoneStatusID.Value = 2) and
            ((Dm.Select_FollowUP_By_CustomerIDStatusSaveDate.Value = Null) or (Dm.Select_FollowUP_By_CustomerIDStatusSaveDate.AsString = ''))then
            Dm.Select_FollowUP_By_CustomerIDStatusSaveDate.Value := ShamsiString(Now);

         if not(Select_customer_By_CustomerIDCustomerStatusID.AsInteger in [1,2]) then
         begin
            ShowMessage('Ê÷⁄Ì  «Ì‰ „‘ —Ì œ— Õ«· ÅÌêÌ—Ì ‰Ì”  ·–« ‰„Ì  Ê«‰ Ìò ÅÌêÌ—Ì »—«Ì ¬‰ À»  ò—œ');
            Abort;
         end
         else
         begin
               //FieldByName('CustomerId').Value := Select_customer_By_CustomerIDCustomerID.Value;
//                _ToDoDate:= edtToDoDate.Text;

            Post;

            Close;
            Open;

            // Amin 1391/12/26 Start
            if IsInEditMode then
               dm.Select_FollowUP_By_CustomerID.Locate('FollowUPID', IndicatorID, [loCaseInsensitive])
            else
               Dm.Select_FollowUP_By_CustomerID.Last;
            // Amin 1391/12/26 End
         end;
      end;
      ShowMessage(' À»  «‰Ã«„ ‘œ ');

      if not (UpperCase(_AreYouYeganeh) =UpperCase('True')) then
     begin
        treFollowUps.DataSource:= Dm.DSelect_FollowUP_By_CustomerID;
        treFollowUps.Refresh;
     end;

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

procedure TFrFollowUp.btnViwCustomerClick(Sender: TObject);
begin
  inherited;
   propertiesForm := TPropertiesForm.Create(Application,Select_customer_By_CustomerIDCustomerID.AsInteger) ;
   PropertiesForm.Showmodal;
end;

function TFrFollowUp.LoadImageField(Field: TField; Path: String): Boolean;
begin
   if not Field.IsNull then
    begin
           TBlobField(Field).SaveToFile(path);
           Result := True;
    end else
    begin
      ShowMessage('ÅÌÊ”  „ÊÃÊœ ‰Ì” ');
      Result := False
    end;
end;

procedure TFrFollowUp.btnJpegViewClick(Sender: TObject);
var Path :String;
begin
  inherited;
  Path := Directory+'FollowUp'+dm.Select_FollowUP_By_CustomerIDFollowUPID.AsString+Replace(dm.Select_FollowUP_By_CustomerIDToDoDate.AsString,'/','-')+'.jpg';
  if LoadImageField(dm.Select_FollowUP_By_CustomerIDPicAttachment,path) then
  begin
     if _IsWinServer then
     begin
          try
//              if ImageForm=nil then ImageForm:=TImageForm.Create(Application);
              ImageForm:=TImageForm.Create(Application);
              ImageForm.Image1.Picture.LoadFromFile(path);
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
With dm.ActionTypeByUserType do
 begin
   Close;
   SQL.Text := ' Select * from ActionType Where UserTypeId = '+IntToStr(_UserTypeID)+' or (UserTypeId is null) or '+IntToStr(_UserTypeID)+'= 0 ' ;
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
    dbgFollow.PrintTitle := ' ·Ì”  «ﬁœ«„«  '+Select_customer_By_CustomerIDCompanyName.AsString +' »Â „œÌ—Ì  '+Select_customer_By_CustomerIDPersonTitle.AsString+'^'
                            + ' »Â ‘„«—Â  ·›‰ :  '+Select_customer_By_CustomerIDPhone.AsString;
      if Select_customer_By_CustomerIDWorkPhone1.AsString <> '' then dbgFollow.PrintTitle:= dbgFollow.PrintTitle + ' , '+Select_customer_By_CustomerIDWorkPhone1.AsString;
      if Select_customer_By_CustomerIDFaxNumber .AsString <> '' then dbgFollow.PrintTitle:= dbgFollow.PrintTitle + '  ›ﬂ” ' +Select_customer_By_CustomerIDFaxNumber.AsString;
//      if Select_customer_By_CustomerIDAddress .AsString <> '' then dbgFollow.PrintTitle:= dbgFollow.PrintTitle + #13+'  ¬œ—” ' +Select_customer_By_CustomerIDAddress.AsString;
    dbgFollow.ExportToWord
  end
  else ShowMessage('‘„« „ÃÊ“ «ÌÃ«œ Œ—ÊÃÌ «“  «ﬁœ«„«  —« ‰œ«—Ìœ');
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
var
  PinValue : string;
begin
  inherited;
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
    Dm.Marketer.SQL.Add('SELECT * FROM marketer');
    Dm.Marketer.SQL.Add('WHERE IsActive_=1');
    Dm.Marketer.Open;

  dbgFollow.DataSource.DataSet.Locate('FollowUPID',FUID,[]);

  { TODO -oparsa : 14030205 }
  PinValue := Qry_GetResult(' select 1 FROM dbo.usersPinFollowUP WHERE CustomerID = '+ DBEdit4.text +'  AND  UserID = '+ IntToStr(_UserId ) ,dm.YeganehConnection);

  Pin.Visible    := PinValue = '1' ;
  UnPin.Visible  := not Pin.Visible  ;
  { TODO -oparsa : 14030205 }

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
refreshData
end;

procedure TFrFollowUp.btnJpegClearClick(Sender: TObject);
begin
  inherited;
  if not (Dm.Select_FollowUP_By_CustomerIDPicAttachment.IsNull) then
  begin
  if messagedlg('»—«Ì Õ–› ›«Ì· „ÿ„∆‰ Â” Ìœ ø',mtWarning,[mbYes,mbAll,mbCancel], 0) = 6 then
  begin
  dm.Select_FollowUP_By_CustomerID.Edit;
  dm.Select_FollowUP_By_CustomerIDPicAttachment.Clear;
  dm.Select_FollowUP_By_CustomerID.post;
  end;
  end
  else
  ShowMessage('ÅÌÊ”  «“ ‰Ê⁄ ⁄ò” ‰Ì” ');
end;

procedure TFrFollowUp.btnWordClearClick(Sender: TObject);
begin
  inherited;
  if not (Dm.Select_FollowUP_By_CustomerIDWordAttachment.IsNull) then
  begin
  if messagedlg('»—«Ì Õ–› ›«Ì· „ÿ„∆‰ Â” Ìœ ø',mtWarning,[mbYes,mbAll,mbCancel], 0) = 6 then
  begin
  dm.Select_FollowUP_By_CustomerID.Edit;
  dm.Select_FollowUP_By_CustomerIDWordAttachment.Clear;
  dm.Select_FollowUP_By_CustomerID.Post
  end;
  end
  else
  ShowMessage('ÅÌÊ”  «“ ‰Ê⁄ Ê—œ ‰Ì” ');
end;

procedure TFrFollowUp.dbgFollowNeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
  if not (Dm.Select_FollowUP_By_CustomerIDExcellAttachment.IsNull) then
            Color:= TColor(RGB(250, 170, 49));

  if not (Dm.Select_FollowUP_By_CustomerIDPicAttachment.IsNull) then
            Color:=$00ffd683;
            //Color:= TColor(RGB(245, 184, 0));
            //Color:=$0077f983 ;

  if not (Dm.Select_FollowUP_By_CustomerIDWordAttachment.IsNull) then
            Color:= TColor(RGB(85, 232, 105));
            //Color:=$00ffd683 ;

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
  if (Dm.Select_FollowUP_By_CustomerID.State=dsInsert) or (Dm.Select_FollowUP_By_CustomerID.State=dsEdit) then
      Dm.Select_FollowUP_By_CustomerIDToDoDate.AsString:=MssCalendarPro1.Execute('/')
  else
      ShowMessage('»«Ìœ œ— Õ«·  ÊÌ—«Ì‘ Ì« œ—Ã «ÿ·«⁄«  »«‘Ìœ');
end;

procedure TFrFollowUp.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if (Dm.Select_FollowUP_By_CustomerID.State=dsInsert) or (Dm.Select_FollowUP_By_CustomerID.State=dsEdit) then
      Dm.Select_FollowUP_By_CustomerIDDoneDate.AsString:=MssCalendarPro1.Execute('/')
  else
      ShowMessage('»«Ìœ œ— Õ«·  ÊÌ—«Ì‘ Ì« œ—Ã «ÿ·«⁄«  »«‘Ìœ');
end;

procedure TFrFollowUp.DBEdit9Change(Sender: TObject);
begin
  inherited;
  if Trim(DBEdit9.Text)='' then lblDate1.Caption:=''
  else
    case ShamsidayInWeek(Trim(DBEdit9.Text)) of
      0:lblDate1.Caption:='Ã„⁄Â';
      1:lblDate1.Caption:='‘‰»Â';
      2:lblDate1.Caption:='Ìò‘‰»Â';
      3:lblDate1.Caption:='œÊ‘‰»Â';
      4:lblDate1.Caption:='”Â ‘‰»Â';
      5:lblDate1.Caption:='çÂ«—‘‰»Â';
      6:lblDate1.Caption:='Å‰Ã ‘‰»Â';
    end;
end;

procedure TFrFollowUp.Button1Click(Sender: TObject);
begin
  inherited;
  if (Dm.Select_FollowUP_By_CustomerID.State=dsInsert) or (Dm.Select_FollowUP_By_CustomerID.State=dsEdit) then
      Dm.Select_FollowUP_By_CustomerIDToDoDate.AsString:=ShamsiIncDate(DBEdit9.Text,0,0,1)
  else
      ShowMessage('»«Ìœ œ— Õ«·  ÊÌ—«Ì‘ Ì« œ—Ã «ÿ·«⁄«  »«‘Ìœ');
end;

procedure TFrFollowUp.Button2Click(Sender: TObject);
begin
  if (Dm.Select_FollowUP_By_CustomerID.State=dsInsert) or (Dm.Select_FollowUP_By_CustomerID.State=dsEdit) then
      Dm.Select_FollowUP_By_CustomerIDToDoDate.AsString:=ShamsiIncDate(DBEdit9.Text,0,0,-1)
  else
      ShowMessage('»«Ìœ œ— Õ«·  ÊÌ—«Ì‘ Ì« œ—Ã «ÿ·«⁄«  »«‘Ìœ');
end;

procedure TFrFollowUp.Button4Click(Sender: TObject);
begin
  inherited;
  if (Dm.Select_FollowUP_By_CustomerID.State=dsInsert) or (Dm.Select_FollowUP_By_CustomerID.State=dsEdit) then
      Dm.Select_FollowUP_By_CustomerIDDoneDate.AsString:=ShamsiIncDate(DBEdit10.Text,0,0,1)
  else
      ShowMessage('»«Ìœ œ— Õ«·  ÊÌ—«Ì‘ Ì« œ—Ã «ÿ·«⁄«  »«‘Ìœ');
end;

procedure TFrFollowUp.Button3Click(Sender: TObject);
begin
  inherited;
  if (Dm.Select_FollowUP_By_CustomerID.State=dsInsert) or (Dm.Select_FollowUP_By_CustomerID.State=dsEdit) then
      Dm.Select_FollowUP_By_CustomerIDDoneDate.AsString:=ShamsiIncDate(DBEdit10.Text,0,0,-1)
  else
      ShowMessage('»«Ìœ œ— Õ«·  ÊÌ—«Ì‘ Ì« œ—Ã «ÿ·«⁄«  »«‘Ìœ');
end;

procedure TFrFollowUp.DBEdit10Change(Sender: TObject);
begin
  inherited;
  if Trim(DBEdit10.Text)='' then lblDate2.Caption:=''
  else
    case ShamsidayInWeek(Trim(DBEdit10.Text)) of
      0:lblDate2.Caption:='Ã„⁄Â';
      1:lblDate2.Caption:='‘‰»Â';
      2:lblDate2.Caption:='Ìò‘‰»Â';
      3:lblDate2.Caption:='œÊ‘‰»Â';
      4:lblDate2.Caption:='”Â ‘‰»Â';
      5:lblDate2.Caption:='çÂ«—‘‰»Â';
      6:lblDate2.Caption:='Å‰Ã ‘‰»Â';
    end;
end;

procedure TFrFollowUp.acDelEghdamatExecute(Sender: TObject);
var
  ID:Integer;      
begin
  inherited;
  IF MessageDlg('¬Ì« «“ Õ–› «ÿ·«⁄«  „ÿ„∆‰ Â” Ìœø',mtConfirmation,[mbyes,mbno],0)=mryes then
  Begin
     Qry_SetResult(' Delete From Followup Where FollowUpID = '+Dm.Select_FollowUP_By_CustomerIDFollowUPID.AsString ,Dm.YeganehConnection);
     Dm.Select_FollowUP_By_CustomerID.Prior;
     ID := Dm.Select_FollowUP_By_CustomerIDFollowUPID.Value;
     Dm.Select_FollowUP_By_CustomerID.Next;
     Dm.Select_FollowUP_By_CustomerID.Requery;
     Dm.Select_FollowUP_By_CustomerID.Locate('FollowUPID',id,[]);
     treFollowUps.Refresh;  // Amin 1391/08/25
  End;
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

   if UpperCase(MssMessage1.execute('¬Ì«  €ÌÌ—«  œ— ›«Ì· Ê—œ «⁄„«· ‘Êœø'))=UpperCase('Ok') then
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
  if messagedlg('»—«Ì Õ–› ›«Ì· „ÿ„∆‰ Â” Ìœ ø',mtWarning,[mbYes,mbAll,mbCancel], 0) = 6 then
  begin
  dm.Select_FollowUP_By_CustomerID.Edit;
  dm.Select_FollowUP_By_CustomerIDExcellAttachment.Clear;
  dm.Select_FollowUP_By_CustomerID.Post;
  end;
  end
  else
  ShowMessage('ÅÌÊ”  «“ ‰Ê⁄ «ò”· ‰Ì” ');
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
  if messagedlg('»—«Ì Õ–› ›«Ì· „ÿ„∆‰ Â” Ìœ ø',mtWarning,[mbYes,mbAll,mbCancel], 0) = 6 then
  begin
  dm.Select_FollowUP_By_CustomerID.Edit;
  dm.Select_FollowUP_By_CustomerIDPdfAttachment.Clear;
  dm.Select_FollowUP_By_CustomerID.Post;
  end;
  end
  else
  ShowMessage('ÅÌÊ”  «“ ‰Ê⁄ ›«Ì· ÅÌ œÌ «› ‰Ì” ');
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

  if UnPin.Visible then
  begin

    qry.SQL.Text   := ' IF EXISTS ( SELECT 1 FROM dbo.usersPinFollowUP WHERE CustomerID = '+ DBEdit4.text +' AND  UserID = '+IntToStr(_UserId )+') ' +
                      '   DELETE FROM dbo.usersPinFollowUP WHERE CustomerID = '+ DBEdit4.text +'  AND  UserID = '+ IntToStr(_UserId );

  end
  else
  begin
    pinfollow :=   Qry_GetResult(' select count(customerid) FROM dbo.usersPinFollowUP WHERE  UserID = '+ IntToStr(_UserId )  ,dm.YeganehConnection) ;
    if pinfollow <> '5' then
    begin
      qry.SQL.Text   := '   INSERT INTO dbo.usersPinFollowUP (CustomerID,UserID) values('+ DBEdit4.text +' , '+ IntToStr(_UserId )+')';

    end
    else
    begin
      ShowMessage(' «„ò«‰ «‰ Œ«» »Ì‘— «“ 5 —òÊ—œ ÅÌ‰ ‘œÂ ÊÃÊœ ‰œ«—œ');
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

end.


