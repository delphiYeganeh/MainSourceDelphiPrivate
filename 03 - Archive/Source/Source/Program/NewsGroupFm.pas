unit NewsGroupFm;

interface

uses
  BaseUnit , Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst, YchecklistBox, Mask, DBCtrls, Buttons,
  Grids, DBGrids, YDbgrid, ExtCtrls;

type
  TFmNewsGroup = class(TMBaseForm)
    Panel2: TPanel;
    YDBGrid1: TYDBGrid;
    Panel1: TPanel;
    DBN1: TDBNavigator;
    Panel4: TPanel;
    Panel3: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    DBEDescript: TDBEdit;
    DBETitle: TDBEdit;
    CKLBUsers: TYchecklistBox;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure YDBGrid1CellClick(Column: TColumn);
    procedure YDBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CKLBUsersClearInDb;
    procedure CKLBUsersChecked(ID: Integer);
    procedure CKLBUsersNeedCheck(ID: Integer; var checked: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure DBN1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
  private
    procedure ChangeCKLBUsersData;
  public
    { Public declarations }
  end;

var
  FmNewsGroup: TFmNewsGroup;

implementation

uses Dmu,NewsGroupDM, UMain,YShamsiDate;

{$R *.dfm}

procedure TFmNewsGroup.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   inherited;
   With DMNewsGroup do
   begin
      SPNewsGroup.Close;
      QrNewsGroupUsers.Close;
      QrUsersList.Close;
      SpDelNewsGroupUsers.Close;
   end;
end;

procedure TFmNewsGroup.FormShow(Sender: TObject);
begin
   inherited;
   With DMNewsGroup do
   begin
      SPNewsGroup.Close;
      SPNewsGroup.Parameters.ParamByName('@UsersID').Value := _userid;
      SPNewsGroup.Open;
      QrUsersList.Open;

      ChangeCKLBUsersData;
   end;
end;

procedure TFmNewsGroup.YDBGrid1CellClick(Column: TColumn);
begin
   inherited;
   ChangeCKLBUsersData;  
end;

procedure TFmNewsGroup.YDBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
   ChangeCKLBUsersData;
end;

procedure TFmNewsGroup.CKLBUsersClearInDb;
begin
  inherited;
  //Õ–›  „«„Ì —òÊ—œÂ«Ì «Ì‰ ê—ÊÂ ò«—Ì
  With DMNewsGroup do
  begin
     SpDelNewsGroupUsers.Close;
     SpDelNewsGroupUsers.Parameters.ParamByName('@NewsGroupID').Value :=  SPNewsGroupNewsGroupID.AsInteger;
     SpDelNewsGroupUsers.ExecProc;
  end;
end;

procedure TFmNewsGroup.CKLBUsersChecked(ID: Integer);
begin
   inherited;
   //œ—Ã —òÊ—œ ÃœÌœ
   With DMNewsGroup do
   begin
      QrNewsGroupUsers.Insert;
      QrNewsGroupUsersNewsGroupID.AsInteger := SPNewsGroupNewsGroupID.AsInteger;
      QrNewsGroupUsersUsersID.AsInteger := ID;
      QrNewsGroupUsers.Post;
   end;
end;

procedure TFmNewsGroup.CKLBUsersNeedCheck(ID: Integer;
var checked: Boolean);
begin
   inherited;
   Checked := DMNewsGroup.QrNewsGroupUsers.Locate('UsersID',ID,[]);
end;

procedure TFmNewsGroup.ChangeCKLBUsersData;
begin
   With DMNewsGroup do
   begin
      QrNewsGroupUsers.Close;
      QrNewsGroupUsers.Open;
   end;
   CKLBUsers.Fill;
   
end;

procedure TFmNewsGroup.FormCreate(Sender: TObject);
begin
   inherited;
   DBNav_Setup(DBN1);
end;

procedure TFmNewsGroup.DBN1Click(Sender: TObject; Button: TNavigateBtn);
begin
   inherited;
   if Button = nbInsert then
      DBETitle.SetFocus;

   if Button in [nbInsert,nbEdit] then
      CKLBUsers.Enabled := True
   else
      CKLBUsers.Enabled := False;

   if Button = nbPost then
      CKLBUsers.Post;

   ChangeCKLBUsersData;
end;

procedure TFmNewsGroup.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
   if Key = Vk_Return then
      SelectNext(TWinControl(Sender),True,True);
end;

procedure TFmNewsGroup.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
