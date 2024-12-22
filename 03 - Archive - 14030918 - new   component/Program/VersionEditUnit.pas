unit VersionEditUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, xpWindow, ExtActns, ActnList, DB, StdCtrls, Buttons,
  Mask, ExtCtrls, AdvGlowButton;

type
  TVersionEditFrom = class(TMBaseForm)
    BitBtn2: TAdvGlowButton;
    BitBtn1: TAdvGlowButton;
    Label1: TLabel;
    output: TEdit;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    MaskEdit1: TMaskEdit;
    pnlMain: TPanel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VersionEditFrom: TVersionEditFrom;

implementation

Uses Dmu ;

{$R *.dfm}

procedure TVersionEditFrom.BitBtn1Click(Sender: TObject);
begin
 ModalResult:=Mrok;
end;

procedure TVersionEditFrom.BitBtn2Click(Sender: TObject);
begin
 ModalResult := mrCancel;
end;

end.
