unit UselectSec;                     

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Mask , BaseUnit, Menus, DB, DBCtrls,
  xpBitBtn,  ExtActns, ActnList;

type
  TFselectSec = class(TMBaseForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Bevel1: TBevel;
    DBLookupComboBox1: TDBLookupComboBox;
    dUserSecs: TDataSource;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    SelectedSecID: integer;
  end;

var
  FselectSec: TFselectSec;

implementation

uses Dmu, UMain;



{$R *.DFM}

procedure TFselectSec.BitBtn2Click(Sender: TObject);
begin
  SelectedSecID:=DBLookupComboBox1.KeyValue;
  close;
end;

procedure TFselectSec.BitBtn1Click(Sender: TObject);
begin
SelectedSecID:=-1;
 close;
end;

end.
