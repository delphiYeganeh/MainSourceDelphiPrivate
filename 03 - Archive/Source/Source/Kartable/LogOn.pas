unit LogOn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, ADODB, Grids, DBGrids, ActnList,baseunit,Registry,
  ComCtrls;

type
   TRGBQuadArray = packed array [0..MaxInt div SizeOf (TRGBQuad) - 1] of tagRGBTRIPLE;
   PRGBArray = ^TRGBQuadArray;
   
  TLoginForm = class(TMBaseForm)
    Password: TEdit;
    UserName: TEdit;
    ActionList1: TActionList;
    Aclose: TAction;
    Alogin: TAction;
    PrivateLogin: TAction;
    Image1: TImage;
    Label3: TLabel;
    Image2: TImage;
    Label4: TLabel;
    Image3: TImage;
    Image4: TImage;
    Image6: TImage;
    Image5: TImage;
    lblDate: TLabel;
    lbltxt: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure  SaveUserInRegistry;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AloginExecute(Sender: TObject);
    procedure PrivateLoginExecute(Sender: TObject);
    procedure UserNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PasswordKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    function CreateRegion(Bmp: TBitmap): THandle;
    procedure Label4MouseEnter(Sender: TObject);
    procedure Label4MouseLeave(Sender: TObject);
    procedure Label3MouseEnter(Sender: TObject);
    procedure Label3MouseLeave(Sender: TObject);
    procedure UserNameEnter(Sender: TObject);
    procedure UserNameExit(Sender: TObject);
    procedure PasswordEnter(Sender: TObject);
    procedure PasswordExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    labelActiveColor: TColor;// = $00404F2A;
    labelDeactiveColor : TColor;// = $00587330;
  end;

var
  LoginForm: TLoginForm;

implementation

uses  UMain, yShamsiDate, Dmu, businessLayer;
var correct:boolean;
{$R *.dfm}

function TLoginForm.CreateRegion(Bmp: TBitmap): THandle;
var
  X, Y, StartX:Integer;
  Excl: THandle;
  Row: PRGBArray;
  TransparentColor: TRGBTriple;
begin
  // Change the format so we know how to compare 
  // the colors 
  Bmp.PixelFormat := pf24Bit;
    
  // Create a region of the whole bitmap 
  // later we will take the transparent   
  // bits away
  Result := CreateRectRGN(0, 0, Bmp.Width, Bmp.Height);

  // Loop down the bitmap   
  for Y := 0 to Bmp.Height - 1 do
  begin
    // Get the current row of pixels
    Row := Bmp.Scanline[Y];

    // If its the first get the transparent
    // color, it must be the top left pixel
    if Y = 0 then
    begin
      TransparentColor := Row[0];
    end;

    // Reset StartX (-1) to indicate we have
    // not found a transparent area yet
    StartX := -1;

    // Loop across the row
    for X := 0 to Bmp.Width do
    begin

      // Check for transparency by comparing the color
      if(X <> Bmp.Width) and
        (Row[X].rgbtRed = TransparentColor.rgbtRed) and
        (Row[X].rgbtGreen = TransparentColor.rgbtGreen) and
        (Row[X].rgbtBlue = TransparentColor.rgbtBlue) then
      begin
        // We have (X <> Bmp.Width) in the clause so that
        // when we go past the end of the row we we can
        // exclude the remaining transparent area (if any)
        // If its transparent and the previous wasn't
        // remember were the transparency started
        if StartX = -1 then
        begin
          StartX := X;
        end;
      end
      else
      begin
        // Its not transparent
        if StartX > -1 then
        begin
          // If previous pixels were transparent we
          // can now exclude the from the region
          Excl := CreateRectRGN(StartX, Y, X, Y + 1);
          try
            // Remove the exclusion from our original region
            CombineRGN(Result, Result, Excl, RGN_DIFF);

            // Reset StartX so we can start searching
            // for the next transparent area
            StartX := -1;
          finally
            DeleteObject(Excl);
          end;
     end;
      end;
    end;
  end;
end;


procedure  TLoginForm.SaveUserInRegistry;
var R: TRegistry;
un:string;
begin
  r:=TRegistry.Create;
  with r do
   begin
   RootKey:=HKEY_CURRENT_USER;
   OpenKey(RegistryKey, True);
   un:=ReadString('UserName');
   IF  UserName.Text<>UN then
     if MessageShowString('��� ��� ������ ��� �� ��� ������� ����� ���?',True) then
        WriteString('UserName', UserName.Text);
  end;   
end;

procedure TLoginForm.FormCreate(Sender: TObject);
var
   p : TCreateParams;
  Bmp: TBitmap;
  fregion : HRGN;
begin
   labelActiveColor:= $00404F2A;     
   labelDeactiveColor := $00587330;
 {$IFDEF ADA}
      Image1.Picture := Image4.Picture;
      Width := 508;
      Height := 332;
      UserName.Color := $00F3F3F3;
      Password.Color := $00F3F3F3;
      username.Left := 26;
      UserName.Top := 118;
      UserName.Width := 143;
      UserName.Height := 24;
      Password.Left := 26;
      Password.Top := 164;
      Password.Width := 143;
      Password.Height := 24;
      Label3.Caption := '         ����';
      Label4.Caption := '            ������';
      Label3.Font.Name := 'B Titr';
      Label4.Font.Name := 'B Titr';
      UserName.Font.Name := 'B Titr';
      Password.Font.Name := 'B Titr';
      image2.Picture := Image6.Picture;
      Image3.Picture := Image5.Picture;
      Image2.Width := 107;
      Image3.Width := 107;
      Image2.Height := 28;
      Image3.Height := 28;
      Image2.Left := 121;
      Image3.Left := 121;
      Image2.Top := 208;
      Image3.Top := 240;

      Label3.Width := 107;
      Label4.Width := 107;
      Label3.Height := 28;
      Label4.Height := 28;
      Label3.Left := 121;
      Label4.Left := 121;
      Label3.Top := 208;
      Label4.Top := 240;

      labelActiveColor:= $00464646;
      labelDeactiveColor := $008c8c8c;
      Label1.Font.Color := clBlack;
      Label1.Height := 35;
      Label1.Top := 85;
      Label1.Width := 400;
      Label1.Left := 50;
  {$ENDIF}
   Label3.Font.Color := labelDeactiveColor;
   Label4.Font.Color := labelDeactiveColor;
   UserName.Font.Color := labelActiveColor;
   correct:=false;
   dm.Users.Open;
   Bmp := TBitmap.Create;
  try
    // We use a TImage to hold the bitmap so that 
    // we can see how the form will look at design
    // time
    Bmp.Assign(Image1.Picture);
    FRegion := CreateRegion(Bmp);
    SetWindowRGN(Handle, FRegion, True);
  finally
    Bmp.Free;
  end;
end;

procedure TLoginForm.btnLoginClick(Sender: TObject);
var
   usersCount: integer;
   psw : string;
begin
   dm.QryActiveUser.Active := False;
   dm.QryActiveUser.Parameters.ParamByName('UserName').Value := Trim(UserName.Text);
   dm.QryActiveUser.Active := True;

   if dm.QryActiveUserActive.Value = False then
   begin
      ShowMsg(56);
      Password.SetFocus;
      Abort;
      Exit;
   end;

   if dm.QryActiveUseriscartableuser.Value = False then
   begin
      ShowMsg(56);
      Password.SetFocus;
      Abort;
      Exit;
   end;


   if (Password.Text = '���� ����') and (Password.PasswordChar = #0) then
      psw := ''
   else
      psw := Password.text;

with dm,Users do
  begin
  if (not Locate('userName',UserName.Text,[])) then
    begin
      ShowMsg(56);
      Password.SetFocus;
    end
   else
   if  (Psw<>Locked( dm.UsersPassWord.AsString,False)) then
    begin
      ShowMsg(56);
      Password.SetFocus;
    end
   else
   if  (_Today<UsersBeginActiveDate.AsString) or (_Today>UsersEndActiveDate.AsString) {or not(Usersiscartableuser.AsBoolean)} then
   begin
       messageShowString('��� ����� ���� �� ������� �� ��� ����� ������',false);
       Password.Text:='';
       UserName.text:='';
       UserName.SetFocus;
   end
   else
   begin
       if ((UsersGroupID.IsNull) or (UsersGroupID.AsInteger<=0)) and (1>1) then
       begin
           ShowMsgString('��� ����� ���� ���� ��� ����� ��� ������� �� ��� ����� �� ���� ����� ��� ���� Ȑ����');
           Application.Terminate;

       end
       else
       begin
       {
       with TADOQuery.Create(nil) do
       begin
       Connection := dm.YeganehConnection;
       SQL.Text := 'SELECT Value FROM Settings WHERE (VariableName = ''98'')';
       Open;
       if not IsEmpty then
       begin
         usersCount := StrToIntDef(locked(fields[0].Value,false),0);
         //usersCount := StrToIntDef(fields[0].Value,0);
         close;
         SQL.Text := 'SELECT top '+ IntToStr(usersCount) +' username from users where active =1';
         open;
         if not Locate('userName',UserName.Text,[]) then
         begin
            ShowMessage('�� ���� ����� ����� ����� ���� ���');
            exit;
         end;
       end;
       end;
       }
       alogin.Execute;

       end;
   end;

  end;
end;

procedure TLoginForm.BitBtn2Click(Sender: TObject);
begin
  Halt;
end;

procedure TLoginForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if not correct then abort;

end;

procedure TLoginForm.AloginExecute(Sender: TObject);
var logout,isSafeLogout:boolean;
Host, IP, Err: string;

begin
  dm.FromOrganizations.close;
  dm.FromOrganizations.Parameters.ParamByName('@FromOrgID').Value := IntToStr(_UserFromOrgID);
  dm.FromOrganizations.Open;

correct:=true;
     with dm do
      begin
        _userid:=UsersId.AsInteger;
        _MyUserID:=_userid;
         _userName:=UsersTitle.AsString;
        _AccessID:=UsersAccessID.AsInteger;
        _DefaultSec:=UsersDefualtSecretariatID.AsInteger;
        _UserFromOrgID:=UsersFromOrgID.AsInteger; //���
        _UserSecondOrgID:=UsersSecondOrgID.AsInteger;
        _ActiveSemat:=_UserFromOrgID;
        _UserEmail:=UsersEmail.AsString;
        _CanViewSecureRecommite:=UsersCanViewSecureRecommite.AsBoolean;
        _GroupID:=UsersGroupID.AsInteger;

        _CanRecommiteWithOtherOrg := UsersCanRecommiteWithOtherOrg.AsBoolean; // Amin 1391/12/07
         Users.Sort:='Title';
         FromOrganizations.Sort:='Title';
         SaveUserInRegistry;

        _PasswordMustChange:=False;//((length(password.Text)<6) or is_integer(password.Text));

        if (_UserFromOrgID=0) then
        begin
            ShowMsgString('��� ����� ��� ��� �����');
            Application.Terminate;
        end;

      with TADOQuery.Create(nil)do
      begin
         Connection := dm.YeganehConnection;
         SQL.Text := 'SELECT canViewClassifiedArchiveDocs FROM Users WHERE ID='+IntToStr(_UserID);
         Open;
         if not IsEmpty then
            if Fields[0].AsBoolean then
               _Can_View_Classified_Archive_Docs := true;
      end;

        with UserSettings do
         begin
          Parameters.ParamByName('UID').Value:=_userid;
          Open;
         end;
         with UserShortCut do
         begin
            close;
            Parameters.ParamByName('UserID').Value:=_userid;
            Open;
         end;
        with UserTemplateGroup do
         begin
          close;
          Parameters.ParamByName('UserID').Value:=_userid;
          Open;
         end;

        with UserSecs do
         begin
          close;
          Parameters.ParamByName('UserID').Value:=_userid;
          Open;
          if RecordCount=0 then
            begin
             ShowMsg(59);
             correct:=false;
             close;
            end;
         end;


           if not GetSystemSetting('AllowMultiUser') then
           begin
               Exec_GetUserLogout_status(_userid,logout,isSafeLogout);

               if not logout then
                begin
                 ShowMsg(85);
                 correct:=false;
                 close;
                 exit;
                end;
            end;
      end;
  if GetIPFromHost(Host, IP, Err) then
      _UserLoginLogoutID:=Exec_insert_UserLoginLogout(_userid,IP,true)
    else
      _UserLoginLogoutID:=Exec_insert_UserLoginLogout(_userid,'UnKnown',true);


     close;
end;

procedure TLoginForm.PrivateLoginExecute(Sender: TObject);
begin
       if  dm.Users.Locate('id',0,[]) then
        begin
          _userid:=dm.UsersId.AsInteger;
          Alogin.Execute;
        end else exit;

end;

procedure TLoginForm.UserNameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 if key=13 then
   SelectNext(ActiveControl,true,true);
end;

procedure TLoginForm.PasswordKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if (Password.Text = '���� ����') and (Password.Font.Color = labelActiveColor) then
   begin
      Password.Font.Color := clBlack;
      Password.PasswordChar := '*';
      Password.Text := '';
   end;
   if key =13 then
      BtnLoginClick(self);
end;

procedure TLoginForm.FormShow(Sender: TObject);
var R: TRegistry;
un:string;
begin
 Inherited;
  r:=TRegistry.Create;
    R.RootKey:=HKEY_CURRENT_USER;
    R.OpenKey(RegistryKey, True);
    un:=R.ReadString('UserName');
    if un<>'' then
     begin
      UserName.Text:=un;
      Password.SetFocus;
     end;
     Password.Font.Color := labelActiveColor;
  Label2.Caption := ' ���� ' + _SoftVersion;
  //---
  Randomize;
  lblDate.Caption := _SoftLastUpdate;
  {if not GetSystemSetting('ShowLifeTips') then
   lifeTipLabel.Hide
    else
   lifeTipLabel.Caption:=Exec_Get_LifeTip_byUserid(1+random(10));  }
   {StatusBar1.Panels[1].Text := ' ����� ����� ������ ' +_SoftLastUpdate;  }
 //  Label2.Caption := '����� ��������� ����� '+_yeganeh;
end;

procedure TLoginForm.Label4MouseEnter(Sender: TObject);
begin
  inherited;
   Image3.Visible := true;
   Label4.Font.Color := labelActiveColor;
end;

procedure TLoginForm.Label4MouseLeave(Sender: TObject);
begin
  inherited;
   Image3.Visible := false;
   Label4.Font.Color := LabelDeactiveColor;
end;

procedure TLoginForm.Label3MouseEnter(Sender: TObject);
begin
  inherited;
   Image2.Visible := true;
   Label3.Font.Color := labelActiveColor;
end;

procedure TLoginForm.Label3MouseLeave(Sender: TObject);
begin
  inherited;
   Image2.Visible := false;
   Label3.Font.Color := labelDeactiveColor;
end;

procedure TLoginForm.UserNameEnter(Sender: TObject);
begin
  inherited;
   if (UserName.Text = '��� ������') and (UserName.Font.Color = labelActiveColor) then
   begin
      UserName.Text := ''  ;
      UserName.Font.Color := clBlack;
   end;
end;

procedure TLoginForm.UserNameExit(Sender: TObject);
begin
  inherited;
   if UserName.Text = ''  then
   begin
      UserName.Text := '��� ������';
      UserName.Font.Color := labelActiveColor;
   end;
end;

procedure TLoginForm.PasswordEnter(Sender: TObject);
begin
  inherited;
   if (Password.Text = '���� ����') and (Password.Font.Color = labelActiveColor) then
   begin
      Password.Text := ''  ;
      Password.Font.Color := clBlack;
      Password.PasswordChar := '*';
   end;
end;

procedure TLoginForm.PasswordExit(Sender: TObject);
begin
  inherited;
   if Password.Text = ''  then
   begin
      Password.PasswordChar := #0;
      Password.Text := '���� ����';
      Password.Font.Color := labelActiveColor;
   end;
   if (Password.Text = '���� ����') and (Password.Font.Color = labelActiveColor) then
      Password.PasswordChar := #0;
end;

end.
