unit about;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, xpBitBtn, BaseUnit,  ExtActns, ActnList, DB,ShellAPI ,
  Menus, AppEvnts, xpPanel, AdvGlowButton;

type
  TAboutBox = class(TMBaseForm)
    Panel1: TxpPanel;
    ProductName: TLabel;
    lblVersion: TLabel;
    OKButton: TAdvGlowButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    pnlMain: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure Label9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

uses Dmu;

{$R *.dfm}

procedure TAboutBox.FormCreate(Sender: TObject);
begin
  inherited;
  lblVersion.Caption := ' ‰ê«—‘ ' + _SoftVersion ;
  Label11.Caption  := _SoftLastUpdate ;
  Caption :=   '‰—„ «›“«— œ»Ì—Œ«‰Â '+ _yeganeh;
end;

procedure TAboutBox.Label9Click(Sender: TObject);
var
  MyLink: string;
begin
  MyLink := 'http://www.Yeganehsoft.Com/';
  ShellExecute(Application.Handle, PChar('open'), PChar(MyLink), nil, nil, SW_SHOW);

end;

end.



