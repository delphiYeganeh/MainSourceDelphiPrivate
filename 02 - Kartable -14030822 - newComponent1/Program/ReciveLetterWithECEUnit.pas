unit ReciveLetterWithECEUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Menus, ExtActns, ActnList, DB, ExtCtrls, StdCtrls;

type
  TFReciveLetterWithECE = class(TMBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FReciveLetterWithECE: TFReciveLetterWithECE;

implementation

uses EmailsFm;

{$R *.dfm}

procedure TFReciveLetterWithECE.Button1Click(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TFReciveLetterWithECE.N2Click(Sender: TObject);
begin
  inherited;
  FmEmails:=TFmEmails.Create(Application);
  FmEmails.ShowModal;
end;

end.
