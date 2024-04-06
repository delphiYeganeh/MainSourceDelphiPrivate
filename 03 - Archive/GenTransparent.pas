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

uses Unit1;


{$R *.dfm}

procedure TTransparentForm.Dispaly;
begin
  Height := TForm1(Application.MainForm).Height;
  Width  := TForm1(Application.MainForm).Width;
  Top    := TForm1(Application.MainForm).Top;
  Left   := TForm1(Application.MainForm).Left;
  Show;
end;

procedure TTransparentForm.FormCreate(Sender: TObject);
begin
  BorderStyle     := bsNone;
  AlphaBlend      := True;
  AlphaBlendValue := 70;
end;

end.
