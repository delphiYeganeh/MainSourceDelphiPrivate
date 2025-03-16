unit PasswordDlg;

interface

uses
  Windows, SysUtils,Classes, Graphics, Controls, Forms,
  stdCtrls, Buttons, ExtCtrls, DB, DBTables, Menus, DBCtrls, Grids, DBGrids,dialogs;

type

  TPasswordDlgFrm = class(TForm)
    UserNameLbl: TLabel;
    PasswordEdt: TEdit;
    OkBitBtn: TBitBtn;
    CancelBitBtn: TBitBtn;
    UserNameEdt: TEdit;
    PasswordLbl: TLabel;
    Bevel1: TBevel;
    SearchPassQry: TQuery;
    CodePassSp: TStoredProc;
    DataSource1: TDataSource;
    Company_ComboBox: TDBLookupComboBox;
    CompanyLbl: TLabel;
    CompaniesSP: TStoredProc;
  end;

  TddgPasswordDialog = Class(TComponent)
   private
    PasswordDlgFrm: TPasswordDlgFrm;
    FSystemCode: Byte;
    FUserName: String;
    FPassword: String;
    FDatabaseName: String;
    FCompanyCode: String;
    FUsersTableName: String;
   public
    function Execute: String;
    function CheckSetItems(MainMenu: TMainMenu): String;
   published
    Property SystemCode: Byte read FSystemCode write FSystemCode;
    Property DatabaseName: String read FDatabaseName write FDatabaseName;
    Property CompanyCode: String read FCompanyCode write FCompanyCode;
    property UsersTableName: String read FUsersTableName write FUsersTableName;
  end;

procedure Register;

implementation
{$R *.dfm}

function TddgPasswordDialog.Execute: String;
 Var
  SQLStr: String;
  ModalResult: TModalResult;
begin
 PasswordDlgFrm := TPasswordDlgFrm.Create(Application);
 PasswordDlgFrm.CompaniesSP.ExecProc;
 try
  ModalResult:= PasswordDlgFrm.ShowModal;

  Result := '';
  if ModalResult = mrOk then
   begin
     SQLStr:= '';
     FUserName:= ''''+PasswordDlgFrm.UserNameEdt.Text+'''';
     FPassword:= ''''+PasswordDlgFrm.PasswordEdt.Text+'''';
     FCompanyCode:= ''''+PasswordDlgFrm.Company_ComboBox.Text+'''';
     PasswordDlgFrm.SearchPassQry.DatabaseName := ''+DatabaseName+'';

     SQLStr := Format('Select * From Systems_Users SU,Users U where SU.COMPANY_CODE = %CC and SU.UserId=U.UserId and SystemCode = %SC and UserName = %UN',
                      [FCompanyCode, FSystemCode, FUserName]);
     Try
      With PasswordDlgFrm.SearchPassQry do
       begin
        if Active then Close;
        SQL.Clear;
        SQL.Add(SQLStr);
        Open;
       end;
      Except
       Result:= ''
      End;

     if PasswordDlgFrm.SearchPassQry.Active then
      if PasswordDlgFrm.SearchPassQry.RecordCount >=1 then
        begin
         try
          PasswordDlgFrm.CodePassSp.DatabaseName := ''+DatabaseName+'';
          PasswordDlgFrm.CodePassSp.Close ;
          PasswordDlgFrm.CodePassSp.ParamByName('@Pass').Value:=PasswordDlgFrm.PasswordEdt.Text ;
          PasswordDlgFrm.CodePassSp.ExecProc ;
         except
          Result:= '';
         end ; // Try
         if Trim(PasswordDlgFrm.CodePassSp.ParamByName('@CodePass').Value) = PasswordDlgFrm.SearchPassQry.FieldByName('Password').AsString then
           Result := PasswordDlgFrm.SearchPassQry.FieldValues['STrustee'];
        end
      else
       Result:= ''
     else
      Result:= '';
   end
  else
   begin
    halt;
   end;
 finally
  PasswordDlgFrm.Free;
 end;
end;

function TddgPasswordDialog.CheckSetItems(MainMenu: TMainMenu): String;
 Var
 S,S1: String;
 i,j,k,m,n: Integer;
begin
 Result:= '';
 S:= Execute;
 if S = '' then
  begin
   Result:= '';
  end
 else
  begin
   Result:= copy(FUserName,2,length(FUserName)-2);
   for i:= 0 to MainMenu.Items.count-1 do
   begin
    if S <> '' then
    begin
     S1:= copy(S,1,1);
     S:= Copy(S,2,length(S)-1);
     if S1 = '1' then
      MainMenu.Items[i].Enabled := True
     else if S1 = '0' then
      MainMenu.Items[i].Enabled := False;
    end
    else
     exit;
    for j:= 0 to MainMenu.Items[i].Count-1 do
    begin
     if S <> '' then
     begin
      S1:= copy(S,1,1);
      S:= Copy(S,2,length(S)-1);
      if S1 = '1' then
       MainMenu.Items[i].Items[j].Enabled := True
      else if S1 = '0' then
       MainMenu.Items[i].Items[j].Enabled := False;
     end
     else
      exit;
     for k:= 0 to MainMenu.Items[i].Items[j].Count-1 do
     begin
      if S <> '' then
      begin
       S1:= copy(S,1,1);
       S:= Copy(S,2,length(S)-1);
       if S1 = '1' then
        MainMenu.Items[i].Items[j].Items[k].Enabled := True
       else if S1 = '0' then
        MainMenu.Items[i].Items[j].Items[k].Enabled := False;
      end
      else
       exit;
      for m:= 0 to MainMenu.Items[i].Items[j].Items[k].Count-1 do
      begin
       if S <> '' then
       begin
        S1:= copy(S,1,1);
        S:= Copy(S,2,length(S)-1);
        if S1 = '1' then
         MainMenu.Items[i].Items[j].Items[k].Items[m].Enabled := True
        else if S1 = '0' then
         MainMenu.Items[i].Items[j].Items[k].Items[m].Enabled := False;
       end
       else
        exit;
       for n:= 0 to MainMenu.Items[i].Items[j].Items[k].Items[m].Count-1 do
       begin
        if S <> '' then
        begin
         S1:= copy(S,1,1);
         S:= Copy(S,2,length(S)-1);
         if S1 = '1' then
          MainMenu.Items[i].Items[j].Items[k].Items[m].Items[n].Enabled := True
         else if S1 = '0' then
          MainMenu.Items[i].Items[j].Items[k].Items[m].Items[n].Enabled := False;
        end
        else
         exit;
       end;
      end;
     end;
    end;
   end;
  end;

end;

procedure Register;
begin
  RegisterComponents('Farsi', [TddgPasswordDialog]);
end;

end.
