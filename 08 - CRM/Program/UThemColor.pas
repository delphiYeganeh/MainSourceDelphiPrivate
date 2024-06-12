unit UThemColor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, ExtCtrls, ExtActns, ActnList, DB, xpPanel,
  Buttons, ADODB;

type
  TFThemColor = class(TMBaseForm)
    pnlMain: TPanel;
    RadioGroup1: TRadioGroup;
    Bevel1: TBevel;
    pnlTest: TPanel;
    testxpPnl: TxpPanel;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    ColorBox1: TColorBox;
    ColorBox2: TColorBox;
    ColorBox3: TColorBox;
    ColorBox4: TColorBox;
    Label1: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Shape5: TShape;
    Shape4: TShape;
    Shape3: TShape;
    Shape2: TShape;
    Shape1: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    procedure RadioGroup1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ColorBox1Change(Sender: TObject);
    procedure ColorBox3Change(Sender: TObject);
    procedure ColorBox2Change(Sender: TObject);
    procedure ColorBox4Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
  private
    { Private declarations }
    tColor1: TColor ;
    tColor2: TColor ;
    tColor3: TColor ;
    tColor4: TColor ;

  public
    { Public declarations }
  end;

var
  FThemColor: TFThemColor;

implementation

uses  dmu ;

{$R *.dfm}

procedure TFThemColor.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  if RadioGroup1.ItemIndex = 0 then
  begin
     Shape1.Brush.Color := tColor1;
     Shape2.Brush.Color := tColor2;
     Shape3.Brush.Color := tColor3;
     Shape4.Brush.Color := tColor4;
  end
  else if RadioGroup1.ItemIndex = 1 then
  begin
     Shape1.Brush.Color := clTeal ;
     Shape2.Brush.Color := clScrollBar;
     Shape3.Brush.Color := clHighlight;
     Shape4.Brush.Color := clScrollBar;
  end
  else if RadioGroup1.ItemIndex = 2  then
  begin
     Shape1.Brush.Color := tColor4;
     Shape2.Brush.Color := tColor2;
     Shape3.Brush.Color := tColor1;
     Shape4.Brush.Color := tColor3;
  end
  else if RadioGroup1.ItemIndex = 3  then
  begin
     Shape1.Brush.Color := ColorBox1.Selected;
     Shape2.Brush.Color := ColorBox2.Selected;
     Shape3.Brush.Color := ColorBox3.Selected;
     Shape4.Brush.Color := ColorBox4.Selected;
  end;

   Panel1.Enabled :=  RadioGroup1.ItemIndex = 3 ;
end;

procedure TFThemColor.BitBtn1Click(Sender: TObject);
begin
  inherited;
  ShapeBase.Brush.Color := Shape1.Brush.Color ;
  PnlMain.Color := Shape1.Brush.Color ;
  pnlTest.Color := Shape1.Brush.Color ;

  testxpPnl.StartColor := Shape1.Brush.Color ;
  testxpPnl.EndColor   := Shape2.Brush.Color ;

  testxpPnl.TitleStartColor :=  Shape3.Brush.Color;
  testxpPnl.TitleEndColor   :=  Shape4.Brush.Color;

end;

procedure TFThemColor.ColorBox1Change(Sender: TObject);
begin
  inherited;
  Shape1.Brush.Color := ColorBox1.Selected;
end;

procedure TFThemColor.ColorBox3Change(Sender: TObject);
begin
  inherited;
   Shape3.Brush.Color := ColorBox3.Selected;
end;

procedure TFThemColor.ColorBox2Change(Sender: TObject);
begin
  inherited;
   Shape2.Brush.Color := ColorBox2.Selected;
end;

procedure TFThemColor.ColorBox4Change(Sender: TObject);
begin
  inherited;
     Shape4.Brush.Color := ColorBox4.Selected;
end;

procedure TFThemColor.BitBtn2Click(Sender: TObject);
var
  qry: TADOQuery;
begin
  inherited;

  _Color1 := Shape1.Brush.Color ;
  _Color2 := Shape2.Brush.Color ;
  _Color3 := Shape3.Brush.Color ;
  _Color4 := Shape4.Brush.Color ;
  _ThemTypeColor :=  RadioGroup1.ItemIndex ;

  qry := TADOQuery.Create(self);
  qry.Connection := dm.YeganehConnection;
  qry.SQL.Text   := ' UPDATE [dbo].[Users] SET ThemTypeColor = '+IntToStr(_ThemTypeColor)+', Color1 = '''+ColorToString(_Color1)+''' ,Color2 = '''+ColorToString(_Color2)+''',Color3 = '''+ColorToString(_Color3)+''',Color4= '''+ColorToString(_Color4)+''' WHERE id ='+ IntToStr(_UserId );
  if qry.SQL.Text <> '' then
    qry.ExecSQL;

  qry.Free;
end;

procedure TFThemColor.FormShow(Sender: TObject);
begin
  inherited;

  tColor1:=  $00DAF3EC ;
  tColor2:=  $00FDD0E7 ;
  tColor3:=  $00E4AFCA ;
  tColor4:=  $00F9ECF2 ;
  RadioGroup1.ItemIndex := _ThemTypeColor ;
  RadioGroup1Click(Self);
  BitBtn1Click(Self);
end;

procedure TFThemColor.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  inherited;
  Resize := False ;
end;

end.
