unit YInputQuery;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, xpBitBtn, Mask, ExtCtrls, Dmu;

type
  TYInputQueryF = class(TForm)
    Label1: TLabel;
    output: TEdit;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    done: boolean;
  end;

var
  YInputQueryF: TYInputQueryF;

implementation

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

constructor TYInputQueryF.Create(AOwner: TComponent);
begin
  inherited;
  MssPanelPro1.GradFromColor:=StringToColor(_PanelColor);
  MssPanelPro1.GradRotation:=0;
  MssPanelPro1.GradStyle:=gsDiamond;
  MssPanelPro1.GradToColor:=clWhite;
  MssPanelPro1.DrawGrad:=True;
end;


end.
