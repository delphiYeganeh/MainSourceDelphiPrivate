unit LogOn;

interface

uses
  Windows,baseunit, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, ADODB, Grids, DBGrids, ActnList,
  ExtActns, xpEdit, xpWindow, xpBitBtn, IdBaseComponent, IdComponent,
  IdIPWatch, Registry;

type

// Override the definitions in Graphics.pas
   TRGBQuadArray = packed array [0..MaxInt div SizeOf (TRGBQuad) - 1] of tagRGBTRIPLE;
   PRGBArray = ^TRGBQuadArray;

  TLoginForm = class(TMBaseForm)
    Password: TEdit;
    UserName: TEdit;
    ActionList1: TActionList;
    Aclose: TAction;
    Alogin: TAction;
    PrivateLogin: TAction;
    IdIPWatch1: TIdIPWatch;
    QrUserSetting: TADOQuery;
    lbltxt: TLabel;
    lblDate: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Image2: TImage;
    Label3: TLabel;
    Image3: TImage;
    Label4: TLabel;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BtnLoginClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AloginExecute(Sender: TObject);
    procedure PrivateLoginExecute(Sender: TObject);
    procedure PasswordKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UserNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SaveUserInRegistry;
    procedure FormShow(Sender: TObject);
    procedure Label3MouseEnter(Sender: TObject);
    procedure Label3MouseLeave(Sender: TObject);
    procedure Label4MouseEnter(Sender: TObject);
    procedure Label4MouseLeave(Sender: TObject);
    function  CreateRegion(Bmp: TBitmap): THandle;
    procedure UserNameEnter(Sender: TObject);
    procedure UserNameExit(Sender: TObject);
    procedure PasswordEnter(Sender: TObject);
    procedure PasswordExit(Sender: TObject);
  private
    { Private declarations }
  public
      IsLock:boolean;
      labelActiveColor: TColor;// = $0032514F;
      labelDeactiveColor : TColor;// = $003967BC;
    { Public declarations }
  end;


const

 {$IFDEF ADA}
     RegistryKey = 'Software\ADA\Archive';
 {$ELSE}
     RegistryKey = 'Software\yeganeh\Archive';
 {$ENDIF}
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

procedure TLoginForm.FormCreate(Sender: TObject);
var
   p : TCreateParams;
  Bmp: TBitmap;
  fregion : HRGN;
begin
   labelActiveColor:= $001C2B6E;
   labelDeactiveColor := $003967BC;
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
      Label3.Caption := '         Ê—Êœ';
      Label4.Caption := '            «‰’—«›';
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

      labelActiveColor:= clgray;
      labelDeactiveColor := clSilver;
      Label1.Font.Color := clBlack;
      Label1.Height := 35;
      Label1.Top := 85;
      Label1.Width := 400;
      Label1.Left := 50;
  {$ENDIF}
   Label3.Font.Color := labelDeactiveColor;
   Label4.Font.Color := labelDeactiveColor;
   UserName.Font.Color := labelActiveColor;
 //  Password.Font.Color := labelActiveColor;     
   correct:=false;
   isLock:=false;
   dm.Users.Open;
   //Label1.Caption:=dm.GetSystemValue(16);
   Label6.Caption := '”Ì” „ »«Ìê«‰Ì «”‰«œ ';
   Label7.Caption := dm.GetSystemValue(16);
   //Label8.Caption := GetSystemSetting('OrgName');
  // SoftwareName.Caption:='”Ì” „ »«Ìê«‰Ì «”‰«œ '+_yeganeh;
   Caption:='‰—„ «›“«—Ì '+_yeganeh;
   Label2.Caption := ' ‰ê«—‘ ' + _SoftVersion;

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

procedure TLoginForm.BtnLoginClick(Sender: TObject);
var
   psw : string;
   HKH:String;
begin
   psw := '';
   if Password.Font.Color = clblack then
      psw := Password.Text;
   with Dm.Users do
   begin
      // Amin 1391/11/15 if (not Locate('userName',UserName.Text,[])) or (Password.text<>dm.UsersPassWord.AsString) then

            HKH:=Dm.Users.Connection.ConnectionString;
      if (not Locate('userName',UserName.Text,[])) or (psw<>Locked(dm.UsersPassWord.AsString, false)) then // Amin 1391/11/15
      begin
         ShowMsg(56);
         Password.SetFocus;
      end
         else
            alogin.Execute
   end;
end;

procedure TLoginForm.BitBtn1Click(Sender: TObject);
begin
  Halt;
end;

procedure TLoginForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if not correct then
      abort;
   Action := caFree;
end;

procedure  TLoginForm.SaveUserInRegistry;
var
   R: TRegistry;
   un:string;
begin
  r:=TRegistry.Create;
  with r do
   begin
   RootKey:=HKEY_CURRENT_USER;
   OpenKey(RegistryKey, True);
   un:=ReadString('UserName');
   IF  UserName.Text<>UN then
     if MessageShowString('¬Ì« ‰«„ ò«—»—Ì ‘„« œ— «Ì‰ ò«„ÅÌÊ — –ŒÌ—Â ‘Êœ?',True) then
        WriteString('UserName', UserName.Text);
  end;   
end;

procedure TLoginForm.AloginExecute(Sender: TObject);
var logout,isSafeLogout:boolean;
begin
   correct:=true;

   with dm do
   begin
      if IsLock and (_userid<>UsersId.AsInteger) then
      Begin
         ShowMsg(57);
         exit;
      end;
      _UserId:=UsersId.AsInteger;
      _CanAttachColor:=UsersCanAttachColor.AsBoolean;
      _CanViewAllAttachPages:=UsersCanViewAllAttachPages.AsBoolean;
      _CanViewAllRecommites:=UsersCanViewAllRecommites.AsBoolean;
      _UserName:=UsersTitle.AsString;
      _DefaultSec:=UsersDefualtSecretariatID.AsInteger;
      dm.Secretariats.Locate('SecID',_DefaultSec,[]);
      _ArchiveCenterId:=dm.SecretariatsArchiveCenterID.AsInteger;
      _UserFromOrgID:=UsersFromOrgID.AsInteger ;
      _AccessToClassifieldLetter:=UsersHasSecureLetterAccess.AsBoolean;

      //Add Sanaye 941121
      //«ÌÃ«œ ”ÿÕ œ” —”Ì »—ÊÌ »«Ìê«‰Ì
      with TADOQuery.Create(nil) do
      begin
        try
          Connection := Dm.YeganehConnection;
          close;
          SQL.Text := 'select AccessId from UserSecretariats where UserId = '+IntToStr(_UserId) + ' and SecId = ' + IntToStr(_DefaultSec);
          Open;
          if Fields[0].AsString <> '' then
            _AccessID := Fields[0].AsInteger
          else
            _AccessID:=UsersAccessID.AsInteger;
        finally
          Free;
        end;
      end;
      //end Sanaye

      if not UsersIsSecretariantStaffer.AsBoolean then
      begin
         ShowMsg(58);
         correct:=false;
         Exit;
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
            exit;
         end;
      end;

      with UserTemplateGroup do
      begin
         close;
         Parameters.ParamByName('UserID').Value:=_userid;
         Open;
      end;

      if not GetSystemValue(29) then
         if not IsLock then
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

   //»——”Ì  «—ÌŒ «⁄ »«— ﬂ«—»—«‰
   if (_Today < dm.UsersBeginActiveDate.AsString) or (_Today > dm.UsersEndActiveDate.AsString) then
   begin
      MessageShowString('‘„« œ— »«“Â “„«‰Ì  ⁄—Ì› ‘œÂ ‰„Ì»«‘Ìœ',false);
      Password.Text:='';
      UserName.text:='';
      UserName.SetFocus;
      abort;
   end;

    SaveUserInRegistry;
    {Ranjbar 89.05.27 ID=41}
    //_UserLoginLogoutID := Exec_insert_UserLoginLogout(_userid,'000.000.000.000');
    _UserLoginLogoutID := Exec_insert_UserLoginLogout(_userid,IdIPWatch1.LocalIP,IdIPWatch1.LocalName);
    //---
   Close;
end;

procedure TLoginForm.PrivateLoginExecute(Sender: TObject);
begin
       if  dm.Users.Locate('id',0,[]) then
        begin
          _userid:=dm.UsersId.AsInteger;
          Alogin.Execute;
        end else exit;

end;

procedure TLoginForm.PasswordKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if (Password.Text = 'ò·„Â ⁄»Ê—') and (Password.Font.Color = labelActiveColor) then
   begin
      Password.Font.Color := clBlack;
      Password.PasswordChar := '*';
      Password.Text := '';
   end;
if key =13 then
  BtnLoginClick(self);

end;

procedure TLoginForm.UserNameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key =13 then
SelectNext(TWinControl(sender),true,true);
end;

procedure TLoginForm.FormShow(Sender: TObject);
var
   R: TRegistry;
   un:string;
begin
  inherited;
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
     lblDate.Caption := _SoftLastUpdate;
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

procedure TLoginForm.UserNameEnter(Sender: TObject);
begin
  inherited;
   if (UserName.Text = '‰«„ ò«—»—Ì') and (UserName.Font.Color = labelActiveColor) then
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
      UserName.Text := '‰«„ ò«—»—Ì';
      UserName.Font.Color := labelActiveColor;
   end;
end;

procedure TLoginForm.PasswordEnter(Sender: TObject);
begin
  inherited;
   if (Password.Text = 'ò·„Â ⁄»Ê—') and (Password.Font.Color = labelActiveColor) then
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
      Password.Text := 'ò·„Â ⁄»Ê—';
      Password.Font.Color := labelActiveColor;
   end;
   if (Password.Text = 'ò·„Â ⁄»Ê—') and (Password.Font.Color = labelActiveColor) then
      Password.PasswordChar := #0;
end;

end.
