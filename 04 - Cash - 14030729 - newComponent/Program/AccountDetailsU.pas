unit AccountDetailsU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Grids, DBGrids, YDbgrid, DBCtrls, StdCtrls, Mask, ActnList, ExtCtrls, ComCtrls, jpeg, Menus, DB, ADODB, Buttons;

type
  TFrAccountDetails = class(TYBaseForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    PersonalNo: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;

    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Panel2: TPanel;
    xpPageControl2: TPageControl;
    xpTabSheet3: TTabSheet;
    PicImage: TImage;
    sign: TTabSheet;
    SignImage: TImage;
    DBEdit9: TDBEdit;
    Label7: TLabel;
    DBText1: TDBText;
    Label8: TLabel;
    Shape1: TShape;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    procedure SetAccountID(Value:integer);
    procedure ShowInPanel(P:TWinControl);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FAccountID:integer;
  public
    { Public declarations }
   Property AccountID     : integer read FAccountID write SetAccountID;
  end;

var
  FrAccountDetails: TFrAccountDetails;

implementation

uses dmu, BusinessLayer;

{$R *.dfm}

procedure TFrAccountDetails.SetAccountID(Value:integer);
begin
try
  PicImage.Visible:=False;
  SignImage.Visible:=False;
  FAccountID:=value;
  Open_Account_Details(Value);

  if not dm.Select_Account_Detailspicture.IsNull then
  begin
    PicImage.Visible:=True;
    try
      dm.Select_Account_Detailspicture.SaveToFile(_TempPath+'\Pic.jpg');
      PicImage.Picture.LoadFromFile(_TempPath+'\Pic.jpg');
    except
      ShowMessage('·ÿ›« ⁄ò” —« Å«ò ò‰Ìœ Ì«  €ÌÌ— œÂÌœ');
    end;
  end;

  if not dm.Select_Account_DetailsSign.IsNull then
  begin
    SignImage.Visible:=True;
    try
      dm.Select_Account_DetailsSign.SaveToFile(_TempPath+'\Sign.jpg');
      SignImage.Picture.LoadFromFile(_TempPath+'\Sign.jpg');
    except
      ShowMessage('·ÿ›« «„÷« —« Å«ò ò‰Ìœ Ì«  €ÌÌ— œÂÌœ');
    end;
  end;
except On E:Exception do
  ShowMessage('Error SetAccountID ::' + E.Message);
end;
end;

procedure TFrAccountDetails.ShowInPanel(P:TWinControl);
begin
  ManualDock(p, nil, alClient);
  Show;
  Align:=alClient;
end;

procedure TFrAccountDetails.FormCreate(Sender: TObject);
begin
  inherited;
  AccountID:= 0;
  PersonalNo.Caption := Get_SystemSetting('PersonalTitle');
  //FamilyLabel.Caption := Get_SystemSetting('FamilyTitle');
end;

end.
