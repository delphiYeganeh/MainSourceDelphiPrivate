unit about;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, xpBitBtn;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    ProductName: TLabel;
    Version: TLabel;
    Panel2: TPanel;
    OKButton: TBitBtn;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
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
   //---
end;

end.
 
