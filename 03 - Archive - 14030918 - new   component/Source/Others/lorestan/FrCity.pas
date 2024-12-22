unit FrCity;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DB, DBGrids, ADODB,baseunit, YDbgrid;

type
  TCityFrm = class(TMBaseForm)
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    GroupBox2: TGroupBox;
    DBGrid1: TYDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CityFrm: TCityFrm;

implementation

uses Dmu, FrCityEdit, UzistDM;

{$R *.dfm}

procedure TCityFrm.FormCreate(Sender: TObject);
begin
zistdm.QryCity.Close;
zistdm.QryCity.Open  ;
end;

procedure TCityFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ;
end;

procedure TCityFrm.BitBtn1Click(Sender: TObject);
begin
zistdm.QryCity.Insert;
CityEditFrm:=TCityEditFrm.Create(Application);
CityEditFrm.ShowModal;
end;

procedure TCityFrm.BitBtn2Click(Sender: TObject);
begin
ZistDm.QryCity.Edit;
CityEditFrm:=TCityEditFrm.Create(Application);
CityEditFrm.ShowModal;
end;

procedure TCityFrm.BitBtn3Click(Sender: TObject);
begin
if MessageDlg('«Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœø',mtConfirmation,[mbyes,mbno],0)=mryes then
 ZistDm.QryCity.Delete;
end;

procedure TCityFrm.BitBtn4Click(Sender: TObject);
begin
close;  ;
end;

end.
