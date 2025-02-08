unit UMagnifier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxGDIPlusClasses;

type
  TFMagnifier = class(TForm)
    Image1: TImage;
    PaintBox: TPaintBox;
    Panel1: TPanel;
    Image2: TImage;
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCreate(Sender: TObject);
  private
      Magnification: Integer;
  public
    { Public declarations }
  end;

var
  FMagnifier: TFMagnifier;

implementation

{$R *.dfm}

procedure TFMagnifier.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  SourceRect, DestRect: TRect;
  HalfSize: Integer;
begin

  Magnification := 2; // ÖÑíÈ ÈÒÑäãÇíí
  // ÇäÏÇÒå äÇÍíåÇí ˜å ÈÇíÏ ÈÒÑäãÇíí ÔæÏ
  HalfSize := 20; // äÕİ ÚÑÖ æ ÇÑÊİÇÚ äÇÍíå
         {
  // ÊÚííä ãÍÏæÏåÇí ÇÒ ÊÕæíÑ ˜å ÈÇíÏ ÈÒÑäãÇíí ÔæÏ
  SourceRect := Rect(X - 10, Y - 10, X + 10, Y + 10);

  // ÊÚííä ãÍÏæÏåÇí ÏÑ PaintBox ˜å ÊÕæíÑ ÈÒÑäãÇíí ÔÏå äãÇíÔ ÏÇÏå ãíÔæÏ
  DestRect := Rect(0, 0, PaintBox.Width, PaintBox.Height);

  // ÑÓã ÊÕæíÑ ÈÒÑäãÇíí ÔÏå ÏÑ PaintBox
  PaintBox.Canvas.CopyRect(DestRect, Image1.Picture.Bitmap.Canvas, SourceRect);
            }
  // ÊÚííä ãÍÏæÏåÇí ÇÒ ÊÕæíÑ ˜å ÈÇíÏ ÈÒÑäãÇíí ÔæÏ
  SourceRect := Rect(X - HalfSize, Y - HalfSize, X + HalfSize, Y + HalfSize);

  // ÊÚííä ãÍÏæÏåÇí ÏÑ PaintBox ˜å ÊÕæíÑ ÈÒÑäãÇíí ÔÏå äãÇíÔ ÏÇÏå ãíÔæÏ
  DestRect := Rect(0, 0, PaintBox.Width, PaintBox.Height);

  // Ç˜ ˜ÑÏä PaintBox ŞÈá ÇÒ ÑÓã ÌÏíÏ
  PaintBox.Canvas.FillRect(DestRect);

  // ÑÓã ÊÕæíÑ ÈÒÑäãÇíí ÔÏå ÏÑ PaintBox
  PaintBox.Canvas.CopyRect(DestRect, Image1.Picture.Bitmap.Canvas, SourceRect);


end;

procedure TFMagnifier.Image1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
  SourceRect, DestRect: TRect;
  HalfSize: Integer;
  ZoomFactor: Integer;
begin
    (*
  Magnification := 2; // ÖÑíÈ ÈÒÑäãÇíí
  // ÇäÏÇÒå äÇÍíåÇí ˜å ÈÇíÏ ÈÒÑäãÇíí ÔæÏ
  HalfSize := 20; // äÕİ ÚÑÖ æ ÇÑÊİÇÚ äÇÍíå
         {
  // ÊÚííä ãÍÏæÏåÇí ÇÒ ÊÕæíÑ ˜å ÈÇíÏ ÈÒÑäãÇíí ÔæÏ
  SourceRect := Rect(X - 10, Y - 10, X + 10, Y + 10);

  // ÊÚííä ãÍÏæÏåÇí ÏÑ PaintBox ˜å ÊÕæíÑ ÈÒÑäãÇíí ÔÏå äãÇíÔ ÏÇÏå ãíÔæÏ
  DestRect := Rect(0, 0, PaintBox.Width, PaintBox.Height);

  // ÑÓã ÊÕæíÑ ÈÒÑäãÇíí ÔÏå ÏÑ PaintBox
  PaintBox.Canvas.CopyRect(DestRect, Image1.Picture.Bitmap.Canvas, SourceRect);
            }
  // ÊÚííä ãÍÏæÏåÇí ÇÒ ÊÕæíÑ ˜å ÈÇíÏ ÈÒÑäãÇíí ÔæÏ
  //SourceRect := Rect(X - HalfSize, Y - HalfSize, X + HalfSize, Y + HalfSize);
  SourceRect := Rect(10, 10, 100, 100);

  // ÊÚííä ãÍÏæÏåÇí ÏÑ PaintBox ˜å ÊÕæíÑ ÈÒÑäãÇíí ÔÏå äãÇíÔ ÏÇÏå ãíÔæÏ
  DestRect := Rect(0, 0, PaintBox.Width, PaintBox.Height);

  // Ç˜ ˜ÑÏä PaintBox ŞÈá ÇÒ ÑÓã ÌÏíÏ
  PaintBox.Canvas.FillRect(DestRect);

  // ÑÓã ÊÕæíÑ ÈÒÑäãÇíí ÔÏå ÏÑ PaintBox
  PaintBox.Canvas.CopyRect(DestRect, Image1.Picture.Bitmap.Canvas, SourceRect);
 *)

  // äãÇíÔ äá ĞÑåÈíä
  Panel1.Visible := True;

  // ÊäÙíã ãæŞÚíÊ äá ĞÑåÈíä
  Panel1.Left := X + 20; // İÇÕáå ÇÒ ãæÓ
  Panel1.Top := Y + 20;

  // ÖÑíÈ ÈÒÑäãÇíí
  ZoomFactor := 2;

  // ãÍÇÓÈå ãÓÊØíá ÈÑÔ ÇÒ ÊÕæíÑ ÇÕáí
  SourceRect := Rect(X - Panel1.Width div (2 * ZoomFactor),
                     Y - Panel1.Height div (2 * ZoomFactor),
                     X + Panel1.Width div (2 * ZoomFactor),
                     Y + Panel1.Height div (2 * ZoomFactor));

  // ãÍÏæÏ ˜ÑÏä ãÓÊØíá ÈÑÔ Èå ÇÈÚÇÏ ÊÕæíÑ ÇÕáí
  if SourceRect.Left < 0 then SourceRect.Left := 0;
  if SourceRect.Top < 0 then SourceRect.Top := 0;
  if SourceRect.Right > Image1.Picture.Width then SourceRect.Right := Image1.Picture.Width;
  if SourceRect.Bottom > Image1.Picture.Height then SourceRect.Bottom := Image1.Picture.Height;

  // ÊäÙíã ãÓÊØíá ãŞÕÏ ÏÑ Image2
  DestRect := Rect(0, 0, Panel1.Width, Panel1.Height);

  // ˜í ÈÎÔí ÇÒ ÊÕæíÑ ÇÕáí Èå Image2
  Image2.Canvas.CopyRect(DestRect, Image1.Canvas, SourceRect);

end;

procedure TFMagnifier.FormCreate(Sender: TObject);
begin
  // ÈÇÑĞÇÑí ÊÕæíÑ ÏÑ Image1
 // Image1.Picture.LoadFromFile('C:\Path\To\Your\Image.jpg');
  Image1.Stretch := True;

  // ÊäÙíãÇÊ äá ĞÑåÈíä
  Panel1.Width := 100;
  Panel1.Height := 100;
  Panel1.Visible := False;
  Panel1.ParentBackground := False;
  Panel1.Color := clWhite;
  Panel1.BevelOuter := bvNone;

  // ÊäÙíãÇÊ Image2 ÏÇÎá äá
  Image2.Align := alClient;
  Image2.Stretch := True;
end;

end.
