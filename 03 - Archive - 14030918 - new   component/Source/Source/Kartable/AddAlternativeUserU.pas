unit AddAlternativeUserU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, UemsVCL, DBCtrls, xpBitBtn, xpWindow,
  ExtActns, ActnList, DB, Mask, Buttons, Menus, ExtCtrls;

type
  TFrAddAlternativeUser = class(TMBaseForm)
    Button2: TBitBtn;
    Button3: TBitBtn;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    BeginDate: TDBShamsiDateEdit;
    EndDate: TDBShamsiDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrAddAlternativeUser: TFrAddAlternativeUser;

implementation

uses Dmu, businessLayer;

{$R *.dfm}

procedure TFrAddAlternativeUser.Button3Click(Sender: TObject);
begin
  inherited;
 dm.Select_AlternativeInfo_ByUserID.Cancel;
 close;
end;

procedure TFrAddAlternativeUser.Button2Click(Sender: TObject);
begin
  inherited;
 dm.Select_AlternativeInfo_ByUserID.Post;
 close;
end;

procedure TFrAddAlternativeUser.FormCreate(Sender: TObject);
begin
  inherited;
dm.Open_AlternativeInfo_ByUserID;
end;

procedure TFrAddAlternativeUser.BitBtn1Click(Sender: TObject);
begin
   if MessageShow(39,True) then
   begin
      Dm.QDeleteJaneshin.Close;
      Dm.QDeleteJaneshin.Parameters.ParamByName('userID').Value:=Dm.UserID;
      Dm.QDeleteJaneshin.ExecSQL;
   end;
end;

end.
