unit proportional;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, fcStatusBar, fcDemoRichEdit, wwriched;

type
  TProportionalDemo = class(TForm)
    fcStatusBar1: TfcStatusBar;
    Memo1: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProportionalDemo: TProportionalDemo;

implementation

{$R *.DFM}

end.
