unit PhoneFm;

interface

uses
    BaseUnit, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, DBCtrls, ExtCtrls, StdCtrls, Mask, Grids, DBGrids, YDbgrid,
    Buttons,  ExtActns, ActnList, DB, Menus, ComCtrls, ADODB ;


Type
  TFmPhone = class(TMBaseForm)
    Panel1: TPanel;
    DBN1: TDBNavigator;
    Panel2: TPanel;
    Panel3: TPanel;
    YDBGrid1: TYDBGrid;
    xpBitBtn1: TBitBtn;
    SBSearch: TSpeedButton;
    SBCall: TSpeedButton;
    PopupCall: TPopupMenu;
    NPhone1: TMenuItem;
    NPhone2: TMenuItem;
    NMobile: TMenuItem;
    NFax: TMenuItem;
    NMyNumber: TMenuItem;
    DBText1: TDBText;
    PhoneGroup: TDBLookupComboBox;
    CheckBox1: TCheckBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    Label7: TLabel;
    SpeedButton2: TSpeedButton;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    DBETitle: TDBEdit;
    DBEInternet: TDBEdit;
    DBETel1: TDBEdit;
    DBEEmail: TDBEdit;
    DBEDescript: TDBEdit;
    DBLkCBPhoneGroup: TDBLookupComboBox;
    DBEUsersTitle: TDBEdit;
    DBEPersonName: TDBEdit;
    DBETel2: TDBEdit;
    DBEMobile: TDBEdit;
    DBEFax: TDBEdit;
    DBCBIsPublic: TDBCheckBox;
    DBEAddress: TDBEdit;
    DBEZipCode: TDBEdit;
    TabSheet2: TTabSheet;
    Label14: TLabel;
    Label15: TLabel;
    lstAlUsers: TDBLookupListBox;
    lstAccessUsers: TDBLookupListBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    SpeedButton3: TSpeedButton;
    procedure xpBitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBN1BeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEInternetEnter(Sender: TObject);
    procedure DBEInternetExit(Sender: TObject);
    procedure SBSearchClick(Sender: TObject);
    procedure SBCallClick(Sender: TObject);
    procedure NPhone1Click(Sender: TObject);
    procedure DBEEmailEnter(Sender: TObject);
    procedure DBEEmailExit(Sender: TObject);
    procedure CustomMenuItemClick(Sender: TObject);
    procedure TextMenuItemClick(Sender: TObject);
    procedure PrintMenuItemClick(Sender: TObject);
    procedure ExcelMenuItemClick(Sender: TObject);
    procedure wordMenuItemClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);

    function has_access_to_delete_phone:Boolean;
  private
    FPhoneID: Integer;
    procedure Open_QrPhoneGroup;
    Function Tel_MakeCall(TelNumber,AppName,CalledName,Comment:String):LongInt;
    procedure SetPhoneID(const Value: Integer);


  public
     property PhoneID:Integer read FPhoneID write SetPhoneID;
  end;

var
  FmPhone: TFmPhone;

implementation

uses PhoneDM , YShamsiDate, PhoneGroupFm,Dmu, UMain, SearchFM,
  URenameColumn;

{$R *.dfm}

 //Â‘œ«—: ‰«„  «»⁄ »Â Õ—Ê› ﬂÊçﬂ Ê »“—ê Õ”«” „Ì»«‘œ. ·ÿ›« ‰«„  «»⁄  €ÌÌ— ‰ﬂ‰œ
    function tapiRequestMakeCall(DestAddress : PChar;AppName : PChar;
             CalledParty : PChar;Comment : PChar) : LongInt; stdcall; External 'TAPI32.DLL';

procedure TFmPhone.xpBitBtn1Click(Sender: TObject);
begin
   Close;
end;

procedure TFmPhone.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  //if Not(DMPhone.SPPhone.State in [dsEdit,dsInsert]) then
     //Exit;
  FmPhoneGroup := TFmPhoneGroup.Create(Application);
  FmPhoneGroup.ShowModal;
  Open_QrPhoneGroup;
end;

procedure TFmPhone.Open_QrPhoneGroup;
begin
   With DMPhone do
   begin
      QrPhoneGroup.Close;
      QrPhoneGroup.Parameters.ParamByName('UsersID').Value := _UserID;
      QrPhoneGroup.Open;
   end;
end;

procedure TFmPhone.FormShow(Sender: TObject);
begin
  inherited;
  With DMPhone do
  begin
     Open_QrPhoneGroup;
     SPPhone.Close;
     SPPhone.Parameters.ParamByName('@UserSID').Value := _UserID;
     SPPhone.Open;
     SPPhone.Last;
  end;
  DBNav_Setup(DBN1);
  PageControl1.ActivePage := TabSheet1; // Amin 1391/10/17
end;

procedure TFmPhone.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  With DMPhone do
  begin
     if SPPhone.State in [dsEdit,dsInsert] then
        if MBaseForm.messageShowString('»«‰ò «ÿ·«⁄« Ì œ— Õ«·  ÊÌ—«Ì‘ „Ì »«‘œ . ¬Ì« „«Ì· »Â –ŒÌ—Â «ÿ·«⁄«  ŒÊœ Â” Ìœø',True)then
           DBN1.BtnClick(nbPost)
        else
           DBN1.BtnClick(nbCancel);

     QrSrchPhone.Close;
     QrPhoneGroup.Close;
     SPPhone.Close;
  end;
  YDBGrid1.Columns.SaveToFile(_UserFolder+'\PhoneGRD.ygn');
  
  inherited;
end;

procedure TFmPhone.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if Not(DMPhone.SPPhone.State in [dsEdit,dsInsert]) then
     Exit;
  DMPhone.SPPhonePhoneGroupID.Clear;
end;

function TFmPhone.has_access_to_delete_phone:Boolean;
var
qry      : TADOQuery;
ACCESSID : String;
begin
qry := TADOQuery.Create(nil);
qry.Connection := Dm.YeganehConnection;

qry.Close;
qry.SQL.Clear;
qry.SQL.Add('SELECT AccessID FROM dbo.Users WHERE ID = '+IntToStr(_userid));
qry.Open;

ACCESSID := qry.FIELDBYNAME('AccessID').AsString;

qry.Close;
qry.SQL.Clear;
qry.SQL.Add('SELECT                                                                       ');
qry.SQL.Add('DISTINCT                                                                     ');
qry.SQL.Add('aa.* ,a.Title actionTitle                                                    ');
qry.SQL.Add('FROM ActionsAccess aa                                                        ');
qry.SQL.Add('INNER JOIN  actions a       ON a.id = aa.actionid AND  AA.FormTag =a.FormTag ');
qry.SQL.Add('left  JOIN  componentTag ct ON ct.componentTagId=a.componentTag              ');
qry.SQL.Add('WHERE aa.AccessID='+ACCESSID+' and 1=1                                       ');
qry.SQL.Add('and a.FormTag=1                                                              ');
qry.SQL.Add('And aa.ActionID = ''APhoneDelete''                                           ');
qry.Open;

Result := qry.fieldbyname('HasAccess').AsBoolean;
qry.Close;
qry.Free;
end;

procedure TFmPhone.DBN1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;

  YDBGrid1.SetFocus;

  if Button in [nbInsert,nbEdit] then
  begin
      PageControl1.ActivePageIndex := 0;
     DBETitle.SetFocus;
  end;

  if Button in [nbDelete,nbEdit] then
     if (DMPhone.SpPhoneUsersID.AsInteger <> _UserID)
        and
        not(has_access_to_delete_phone)
        then
     begin
         ShowMsgString('›ﬁÿ ò«—»— À»  ò‰‰œÂ ﬁ«œ— »Â «‰Ã«„ «Ì‰ ò«— „Ì »«‘œ');
         Abort;
         Exit;
     end;


end;

procedure TFmPhone.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = Vk_Return then
     SelectNext(TWinControl(ActiveControl),True,True);

  Form_SetShortCut(Self,DBN1,SBSearch,Nil,Sender,Key,Shift);
end;

procedure TFmPhone.DBEInternetEnter(Sender: TObject);
begin
  inherited;
  Keyboard_English;
end;

procedure TFmPhone.DBEInternetExit(Sender: TObject);
begin
  inherited;
  Keyboard_Farsi;
end;

procedure TFmPhone.SBSearchClick(Sender: TObject);
begin
  inherited;
  With DMPhone do
  begin
     if SPPhone.State in [dsEdit,dsInsert] then
     begin
        MBaseForm.messageShowString('·ÿ›« ﬁ»· «“ Ã” ÃÊ «ÿ·«⁄«  ŒÊœ —« –ŒÌ—Â ‰„«ÌÌœ', False);
        Abort;
     end;

//     QrSrchPhone.SQL.Add('Select * from Phone Where (1=1) And((IsPublic=1)or(UsersID = :UsersID ))');

      QrSrchPhone.Close;
      QrSrchPhone.SQL.Clear;
      QrSrchPhone.SQL.Add('SELECT list1.* FROM');
      QrSrchPhone.SQL.Add('(');
      QrSrchPhone.SQL.Add('Select P.*,PG.Title AS GroupName');
      QrSrchPhone.SQL.Add('from Phone P');
      QrSrchPhone.SQL.Add('LEFT JOIN PhoneGroup PG ON P.PhoneGroupID=PG.PhoneGroupID');
      QrSrchPhone.SQL.Add(') AS list1');
      QrSrchPhone.SQL.Add('WHERE (1=1) And((IsPublic=1)or(UsersID = :UsersID ))');

     if FmSearch.GetSearchValue(QrSrchPhone,'PhoneID','Title',' ',500,600)<>'0' then
        SPPhone.Locate('PhoneID',{QrSrchPhonePhoneID.AsInteger}PhoneID,[]);

  end;
end;

procedure TFmPhone.SBCallClick(Sender: TObject);
begin
  inherited;
  Cursor_SetPos(Self,SBCall,PopupCall);
end;


//‘„«—Â êÌ—Ì  ·›‰
//Tel_MakeCall('09125362541' , '‘„«—Â êÌ—Ì' , '„Õ„œ ⁄·Ì —‰Ã»—' , '»œÊ‰  Ê÷ÌÕ« ');
Function TFmPhone.Tel_MakeCall(TelNumber,AppName,CalledName,Comment:String):LongInt;
   Function Del_Char(aText:String;aChar:Char):String;
   var
      P:integer;
   begin
      if Pos(aChar,aText)=0 then
      begin
         Result := AText;
         Exit;
      end;

      For p := 1 to length(AText) do
         if AText[P] = aChar then
            Delete(AText,p,1);
      Result := Trim(AText);
   end;
Var
   TN:Int64;
   H:THandle;
   EndNum:String;
begin
   H:=0;
   H := FindWindow(Nil,'Phone Dialer');
   if H > 0 then
   begin
      ShowMyMessage('ÅÌ€«„','·ÿ›« ﬁ»· «“ ‘„«—Â êÌ—Ì Å‰Ã—Â '+' "Phone Dialer" '+' —« »»‰œÌœ ',[mbOK],mtInformation);
      if Isiconic(H)then
         ShowWindow(H, SW_MAXIMIZE);
      BringWindowToTop(H);
      //FlashWindow(H,False);//FlashWindowEx
      //if not DestroyWindow(H) then
      Exit;
   end;

   TelNumber := Trim(Del_Char(TelNumber,' '));
   TelNumber := Trim(Del_Char(TelNumber,'-'));
   TelNumber := Trim(Del_Char(TelNumber,'_'));
   TN := StrToInt64Def(TelNumber,0);
   if TN = 0 then
   begin
      ShowMyMessage('Â‘œ«—','ﬂ«—»— ê—«„Ì:' +#13+' ‘„«—Â  ·›‰ '+ TelNumber +
                    ' œ«—«Ì ﬂ«—«ﬂ — €Ì—⁄œœÌ „Ì »«‘œ . ·ÿ›«  ’ÕÌÕ ‰„«ÌÌœ ',[mbOK],mtWarning);
      Exit;
   end;
   EndNum := InputBox('œ—”  »Êœ‰ ‘„«—Â  ·›‰' , 'œ— ’Ê— ÌﬂÂ ‘„«—Â  ·›‰ «‘ »«Â „Ì»«‘œ ° ·ÿ›« ¬‰ —«  ’ÕÌÕ ‰„«ÌÌœ' ,TelNumber);
   Result := tapiRequestMakeCall(PChar(EndNum),PChar(AppName),PChar(CalledName),PChar(Comment));
end;

procedure TFmPhone.NPhone1Click(Sender: TObject);
Var
  Num:String;
begin
   inherited;
   
   With DMPhone do
   Case TPopupMenu(Sender).Tag of
      0 : {NPhone1}
       begin
          Num := Trim(SpPhoneTel1.AsString);
          If (Num<>'') And (StrToInt64Def(Num,0)<>0) then
             Tel_MakeCall(Num,' „«”  ·›‰Ì',Trim(SpPhoneTitle.AsString),'')
          else
             ShowMyMessage('ÅÌ€«„' ,'‘„«—Â «Ì Ì«›  ‰‘œ',[mbOK],mtinformation);
       end;
      1 : {NPhone2}
       begin
          Num := Trim(SpPhoneTel2.AsString);
          If (Num<>'') And (StrToInt64Def(Num,0)<>0) then
             Tel_MakeCall(Num,' „«”  ·›‰Ì',Trim(SpPhoneTitle.AsString),'')
          else
             ShowMyMessage('ÅÌ€«„' ,'‘„«—Â «Ì Ì«›  ‰‘œ',[mbOK],mtinformation);
       end;
      2 : {NMobile}
       begin
          Num := Trim(SpPhoneMobile.AsString);
          If (Num<>'') And (StrToInt64Def(Num,0)<>0) then
             Tel_MakeCall(Num,' „«”  ·›‰Ì',Trim(SpPhoneTitle.AsString),'')
          else
             ShowMyMessage('ÅÌ€«„' ,'‘„«—Â «Ì Ì«›  ‰‘œ',[mbOK],mtinformation);
       end;
      3 : {NFax}
       begin
          Num := Trim(SpPhoneFax.AsString);
          If (Num<>'') And (StrToInt64Def(Num,0)<>0) then
             Tel_MakeCall(Num,' „«”  ·›‰Ì',Trim(SpPhoneTitle.AsString),'')
          else
             ShowMyMessage('ÅÌ€«„' ,'‘„«—Â «Ì Ì«›  ‰‘œ',[mbOK],mtinformation);
       end;
      4 : {NMyNumber}
        begin
           Num := Trim(InputBox('Ê«—œ ﬂ—œ‰ ‘„«—Â','·ÿ›« ‘„«—Â ŒÊœ —« Ê«—œ ‰„«ÌÌœ',''));
           If (Num<>'') And (StrToInt64Def(Num,0)<>0) then
              Tel_MakeCall(Num,' „«”  ·›‰Ì','‘„«—Â êÌ—Ì ‘Œ’Ì','');
        end;
   end;
end;

procedure TFmPhone.DBEEmailEnter(Sender: TObject);
begin
  inherited;
  Keyboard_English;
end;

procedure TFmPhone.DBEEmailExit(Sender: TObject);
begin
  inherited;
  Keyboard_Farsi;
end;

procedure TFmPhone.CustomMenuItemClick(Sender: TObject);
begin
  inherited;
//
end;

procedure TFmPhone.TextMenuItemClick(Sender: TObject);
begin
  inherited;
//
end;

procedure TFmPhone.PrintMenuItemClick(Sender: TObject);
begin
  inherited;
//
end;

procedure TFmPhone.ExcelMenuItemClick(Sender: TObject);
begin
  inherited;
//
end;

procedure TFmPhone.wordMenuItemClick(Sender: TObject);
begin
  inherited;
//
end;

procedure TFmPhone.SetPhoneID(const Value: Integer);
begin
  FPhoneID := Value;
end;

procedure TFmPhone.CheckBox1Click(Sender: TObject);
begin
  inherited;
   // Amin 1391/10/02 Start
   PhoneGroup.Enabled := CheckBox1.Checked;
   if not CheckBox1.Checked then
      DMPhone.SpPhone.Filtered := false
   else
   begin
      if PhoneGroup.KeyValue <> NULL then
      begin
         DMPhone.SpPhone.Filtered := false;
         DMPhone.SpPhone.Filter := 'PhoneGroupID = ' + IntToStr(PhoneGroup.KeyValue);
         DMPhone.SpPhone.Filtered := True;
      end;
   end;
   // Amin 1391/10/02 End
end;

procedure TFmPhone.FormCreate(Sender: TObject);
var
   i : integer;
   s : string;
begin
  inherited;
  // Amin 1391/10/03 Start
   BidiModeToRight(lstAccessUsers);
   BidiModeToRight(lstAlUsers);

      if FileExists(_UserFolder+'\PhoneGRD.ygn') then
         YDBGrid1.Columns.LoadFromFile(_UserFolder+'\PhoneGRD.ygn');

   for i :=0 to YDBGrid1.Columns.Count -1 do
   begin
      s := YDBGrid1.Columns.Items[i].Title.Caption + ' :';
      case i  of
      1 : Label1.Caption := s;
      2 : Label5.Caption := s;
      3 : Label3.Caption := s;
      4 : Label8.Caption := s;
      5 : Label9.Caption := s;
      6 : Label4.Caption := s;
      7 : Label10.Caption := s;
      8 : Label2.Caption := s;
      9 : Label13.Caption := s;
      10: Label11.Caption := s;
      11: Label12.Caption := s;
   end;
   end;

   TabSheet2.TabVisible := (Project = 'Dabir') and (dm.GetActionAccess('APhoneUsersAccess', MainForm.Tag));

   if not dm.GetActionAccess('APhoneEdit', MainForm.Tag) then
      DBN1.VisibleButtons := DBN1.VisibleButtons - [nbInsert, nbEdit, nbDelete, nbInsert];

   if not dm.GetActionAccess('APhoneExport', MainForm.Tag) then
   begin
      Grid_PopupMenu.Items[0].Visible := false;  
      Grid_PopupMenu.Items[1].Visible := false;
      Grid_PopupMenu.Items[2].Visible := false;
      Grid_PopupMenu.Items[3].Visible := false;
   end;
   // Amin 1391/10/03 End
end;

procedure TFmPhone.BitBtn1Click(Sender: TObject);
var
   q : TAdoQuery;
begin
  inherited;
   // Amin 1391/10/03 Start
   if lstAlUsers.KeyValue = NULL then
      exit;

   q:= TADOQuery.Create(nil);
   q.Connection := Dm.YeganehConnection;
   try
      q.SQL.Text := 'exec sp_SetUserContactAccess @PhoneID = '+ DMPhone.SpPhonePhoneID.AsString +', @UserID = '+ IntToStr(lstAlUsers.KeyValue) +', @HasAccess = 1';
      q.ExecSQL;

      DMPhone.QrUsers.Requery;
      DMPhone.Q_AccessUsers.Requery;
   except on e: Exception do
      begin
         ShowMessage(e.Message);
      end;
   end;
   // Amin 1391/10/03 End
end;

procedure TFmPhone.BitBtn2Click(Sender: TObject);
var
   q : TAdoQuery;
begin
  inherited;
   // Amin 1391/10/03 Start
   if lstAccessUsers.KeyValue = NULL then
      exit;

   q:= TADOQuery.Create(nil);
   q.Connection := Dm.YeganehConnection;
   try
      q.SQL.Text := 'exec sp_SetUserContactAccess @PhoneID = '+ DMPhone.SpPhonePhoneID.AsString +', @UserID = '+ IntToStr(lstAccessUsers.KeyValue) +', @HasAccess = 0';
      q.ExecSQL;

      DMPhone.QrUsers.Requery;
      DMPhone.Q_AccessUsers.Requery;
   except on e: Exception do
      begin
         ShowMessage(e.Message);
      end;
   end;
   // Amin 1391/10/03 End
end;

procedure TFmPhone.BitBtn3Click(Sender: TObject);
var
   q : TAdoQuery;
begin
  inherited;
   // Amin 1391/10/03 Start
   q:= TADOQuery.Create(nil);
   q.Connection := Dm.YeganehConnection;
   try
      DMPhone.QrUsers.First;
      DMPhone.QrUsers.DisableControls;
      while not DMPhone.QrUsers.Eof do
      begin
         q.SQL.Text := 'exec sp_SetUserContactAccess @PhoneID = '+ DMPhone.SpPhonePhoneID.AsString +', @UserID = '+ DMPhone.QrUsersId.AsString +', @HasAccess = 1';
         q.ExecSQL;
         DMPhone.QrUsers.Next;
      end;

      DMPhone.QrUsers.EnableControls;
      DMPhone.QrUsers.First;
      DMPhone.QrUsers.Requery;
      DMPhone.Q_AccessUsers.Requery;
   except on e: Exception do
      begin
         ShowMessage(e.Message);
      end;
   end;
   // Amin 1391/10/03 End
end;

procedure TFmPhone.BitBtn4Click(Sender: TObject);
var
   q : TAdoQuery;
begin
  inherited;
   // Amin 1391/10/03 Start
   q:= TADOQuery.Create(nil);
   q.Connection := Dm.YeganehConnection;
   try
      DMPhone.Q_AccessUsers.First;
      DMPhone.Q_AccessUsers.DisableControls;
      while not DMPhone.Q_AccessUsers.Eof do
      begin
         q.SQL.Text := 'exec sp_SetUserContactAccess @PhoneID = '+ DMPhone.SpPhonePhoneID.AsString +', @UserID = '+ DMPhone.Q_AccessUsersUserID.AsString +', @HasAccess = 0';
         q.ExecSQL;
         DMPhone.Q_AccessUsers.Next;
      end;

      DMPhone.Q_AccessUsers.EnableControls;
      DMPhone.Q_AccessUsers.First;
      DMPhone.QrUsers.Requery;
      DMPhone.Q_AccessUsers.Requery;
   except on e: Exception do
      begin
         ShowMessage(e.Message);
      end;
   end;
   // Amin 1391/10/03 End
end;

procedure TFmPhone.SpeedButton3Click(Sender: TObject);
var
   i: integer;
   s : string;
begin
  inherited;
   FmRenameColumn := TFmRenameColumn.Create(nil);
   FmRenameColumn.ComboBox1.Items.Clear;
   for i :=0 to YDBGrid1.Columns.Count -1 do
      FmRenameColumn.ComboBox1.Items.Add(YDBGrid1.Columns.Items[i].Title.Caption);
   FmRenameColumn.ShowModal;
   YDBGrid1.Columns.Items[FmRenameColumn.OldID].Title.Caption := FmRenameColumn.NewName;
   s := FmRenameColumn.NewName + ' :';
   case FmRenameColumn.OldID  of
      1 : Label1.Caption := s;
      2 : Label5.Caption := s;
      3 : Label3.Caption := s;
      4 : Label8.Caption := s;
      5 : Label9.Caption := s;
      6 : Label4.Caption := s;
      7 : Label10.Caption := s;
      8 : Label2.Caption := s;
      9 : Label13.Caption := s;
      10: Label11.Caption := s;
      11: Label12.Caption := s;
   end;
end;

end.
