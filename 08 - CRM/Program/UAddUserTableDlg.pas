unit UAddUserTableDlg;

interface

uses
 DB, BaseUnit, ExtActns, ActnMan, Buttons, StdCtrls, Mask, DBCtrls,
  Controls, Classes, Windows,ActnList, XPStyleActnCtrls,  xpBitBtn, Menus;

type
  TFrAddUserTableDlg = class(TMBaseForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Title: TDBEdit;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
   done:boolean;
    { Public declarations }
  end;

var
  FrAddUserTableDlg: TFrAddUserTableDlg;

implementation

uses Dmu,   UInputUserTable;

{$R *.dfm}

procedure TFrAddUserTableDlg.BitBtn1Click(Sender: TObject);
begin
  inherited;
  dm.get_userTable.Post;
  close;
end;

procedure TFrAddUserTableDlg.BitBtn2Click(Sender: TObject);
begin
  inherited;
dm.get_userTable.Cancel;
close;
end;

procedure TFrAddUserTableDlg.FormShow(Sender: TObject);
begin
  inherited;
Title.SetFocus;
end;

end.
