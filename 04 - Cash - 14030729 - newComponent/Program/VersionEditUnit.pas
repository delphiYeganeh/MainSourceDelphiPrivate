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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TVersionEditFrom.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TVersionEditFrom.BitBtn1Click(Sender: TObject);
begin
 close;
end;

procedure TVersionEditFrom.BitBtn2Click(Sender: TObject);
begin
 close;
end;

end.
