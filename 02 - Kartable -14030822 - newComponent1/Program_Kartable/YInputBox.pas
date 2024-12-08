unit YInputBox;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, InputPassU, StdCtrls, Mask, ExtCtrls;

type
  TFmInputBox = class(TFInputPass)
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); reintroduce; overload;
    constructor Create(const FormCaption: string=''; const LableCaption: string=''; const DefaultVal: string=''); reintroduce; overload;
  end;

var
  FmInputBox: TFmInputBox;

implementation

{$R *.dfm}

{ TFmInputBox }

constructor TFmInputBox.Create(AOwner: TComponent);
begin
   inherited;
end;



constructor TFmInputBox.Create(const FormCaption, LableCaption,
  DefaultVal: string);
begin
   Caption := FormCaption;
   Label1.Caption := LableCaption;
   MaskEdit1.Text := DefaultVal;
   MaskEdit1.SetFocus;
end;

end.
