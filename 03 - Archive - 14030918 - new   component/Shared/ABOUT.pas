unit about;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, ShellAPI ,
  Buttons, ExtCtrls, xpBitBtn, AdvGlowButton, xpPanel;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    ProductName: TLabel;
    Version: TLabel;
    Panel2: TPanel;
    OKButton: TAdvGlowButton;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    pnlMain: TPanel;
    procedure FormShow(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

Uses Dmu;

{$R *.dfm}

procedure TAboutBox.FormShow(Sender: TObject);
begin
   {Ranjbar}
   Label1.Caption := _SoftVersion;
   Label11.Caption  := _SoftLastUpdate ;
   //---
end;

procedure TAboutBox.Label9Click(Sender: TObject);
var
  MyLink: string;
begin
  MyLink := 'http://www.Yeganehsoft.Com/';
  ShellExecute(Application.Handle, PChar('open'), PChar(MyLink), nil, nil, SW_SHOW);
end;

procedure TAboutBox.FormCreate(Sender: TObject);
begin
  Self.Color := _Color1 ;
  Self.Font.Name :=  _MainFont ;
end;

end.
 
