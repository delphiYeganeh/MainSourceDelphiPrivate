unit about;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, xpBitBtn, BaseUnit,  ExtActns, ActnList, DB,
  Menus;

type
  TAboutBox = class(TMBaseForm)
    Panel1: TPanel;
    ProductName: TLabel;
    lblVersion: TLabel;
    OKButton: TBitBtn;
    procedure FormCreate(Sender: TObject);
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
  lblVersion.Caption := ' ���� ' + _SoftVersion ;
  Caption :=   '��� ����� �������� '+ _yeganeh;
end;

end.



