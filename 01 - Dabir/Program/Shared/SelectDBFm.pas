unit SelectDBFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, Menus, ExtActns, ActnList, DB, AppEvnts,
  ExtCtrls;

type
  TFmSelectDB = class(TMBaseForm)
    DataBase: TComboBox;
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSelectDB: TFmSelectDB;

implementation

{$R *.dfm}

procedure TFmSelectDB.Button1Click(Sender: TObject);
begin
  inherited;
close;
end;

end.
