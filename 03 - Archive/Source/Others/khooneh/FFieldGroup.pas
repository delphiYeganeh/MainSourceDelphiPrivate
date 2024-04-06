unit FFieldGroup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls;

type
  TFieldGroupForm = class(TForm)
    DBGrid1: TDBGrid;
    DFieldGroup: TDataSource;
    Button1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FieldGroupForm: TFieldGroupForm;

implementation

uses dmu;

{$R *.dfm}

end.
