unit YInputQuery;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, xpBitBtn, ExtCtrls, AdvGlowButton, ImgList;

type
  TYInputQueryF = class(TForm)
    Label1: TLabel;
    pnlMain: TPanel;
    BitBtn1: TAdvGlowButton;
    BitBtn2: TAdvGlowButton;
    output: TEdit;

    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    done: boolean;
  end;

var
  YInputQueryF: TYInputQueryF;

implementation

Uses
  Dmu ;
{$R *.dfm}

procedure TYInputQueryF.BitBtn2Click(Sender: TObject);
begin
 done:=false;
 close;
end;

procedure TYInputQueryF.BitBtn1Click(Sender: TObject);
begin
 done:=true;
 close;
end;

procedure TYInputQueryF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TYInputQueryF.FormCreate(Sender: TObject);
begin

  Self.Color := _Color1 ;
  Self.Font.Name :=  _MainFont ;  
end;

end.
