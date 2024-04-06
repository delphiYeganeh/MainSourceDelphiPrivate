unit CRMDataBaseUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Menus, ExtActns, ActnList, DB, StdCtrls;

type
  TCRMDataBaseForm = class(TMBaseForm)
    Label1: TLabel;
    Button1: TButton;
    DataBase: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CRMDataBaseForm: TCRMDataBaseForm;

implementation

{$R *.dfm}

procedure TCRMDataBaseForm.Button1Click(Sender: TObject);
begin
  inherited;
close;
end;

end.
