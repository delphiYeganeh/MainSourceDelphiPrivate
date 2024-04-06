unit USecChange;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Mask , BaseUnit, Menus, DB, DBCtrls,
  xpBitBtn,  ExtActns, ActnList;

type
  TSecChange = class(TMBaseForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Bevel1: TBevel;
    DBLookupComboBox1: TDBLookupComboBox;
    dUserSecs: TDataSource;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SecChange: TSecChange;

implementation

uses Dmu, UMain;



{$R *.DFM}

procedure TSecChange.BitBtn2Click(Sender: TObject);
begin
 Dm.SecId:=DBLookupComboBox1.KeyValue;
 Close;
end;

procedure TSecChange.BitBtn1Click(Sender: TObject);
begin
 close;
end;

procedure TSecChange.FormShow(Sender: TObject);
begin
  inherited;
  DBLookupComboBox1.KeyValue:=Dm.SecId;
end;

end.
