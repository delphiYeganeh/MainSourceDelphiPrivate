unit FrCityEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls;

type
  TCityEditFrm = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    done: boolean;
  end;

var
  CityEditFrm: TCityEditFrm;

implementation

uses FrCity, UzistDM;

{$R *.dfm}

procedure TCityEditFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ;
end;

procedure TCityEditFrm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  ;
end;

procedure TCityEditFrm.BitBtn1Click(Sender: TObject);
begin
zistdm.QryCity.Post;
close;
end;

procedure TCityEditFrm.BitBtn2Click(Sender: TObject);
begin
zistDm.QryCity.Cancel;
close;
end;

end.
