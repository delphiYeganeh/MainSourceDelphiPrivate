unit ImageUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, ExtActns, ActnList, DB, ieview, iemview;

type
  TImageForm = class(TMBaseForm)
    pnlMain: TPanel;
    Image1: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImageForm: TImageForm;

implementation

{$R *.dfm}

end.
