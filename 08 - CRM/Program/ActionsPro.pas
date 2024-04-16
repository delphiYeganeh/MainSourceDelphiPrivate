unit ActionsPro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, ExtActns, ActnList;

type
  TfrmActionPro = class(TMBaseForm)
    ADOTable1: TADOTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmActionPro: TfrmActionPro;

implementation

uses dmu;

{$R *.dfm}

end.
