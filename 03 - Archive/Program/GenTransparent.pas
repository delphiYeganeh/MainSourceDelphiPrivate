unit GenTransparent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TTransparentForm = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure Dispaly;
  end;

var
  TransparentForm: TTransparentForm;

implementation

uses UAddLetterDataDialog;


{$R *.dfm}

procedure TTransparentForm.Dispaly;
begin
  Height := TFrAddLetterDataDialog(Application.MainForm).Height;
  Width  := TFrAddLetterDataDialog(Application.MainForm).Width;
  Top    := TFrAddLetterDataDialog(Application.MainForm).Top;
  Left   := TFrAddLetterDataDialog(Application.MainForm).Left;
  Show;
end;

procedure TTransparentForm.FormCreate(Sender: TObject);
begin
  BorderStyle     := bsNone;
  AlphaBlend      := True;
  AlphaBlendValue := 70;
end;

end.
