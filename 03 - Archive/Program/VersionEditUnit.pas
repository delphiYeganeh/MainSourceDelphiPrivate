unit VersionEditUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, xpWindow, ExtActns, ActnList, DB, StdCtrls, Buttons,
  Mask;

type
  TVersionEditFrom = class(TMBaseForm)
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    output: TEdit;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    MaskEdit1: TMaskEdit;
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
