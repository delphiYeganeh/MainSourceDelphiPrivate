unit USecChange;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Mask , BaseUnit, Menus, DB, DBCtrls;

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
 MainForm.SecID:=DBLookupComboBox1.KeyValue;
 close;
end;

procedure TSecChange.BitBtn1Click(Sender: TObject);
begin
 close;
end;

procedure TSecChange.FormShow(Sender: TObject);
begin
  inherited;
  DBLookupComboBox1.KeyValue:=MainForm.SecID;
end;

end.
