unit UMyMessage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, Menus, ExtActns, ActnList, DB, Buttons, Clipbrd,
  ExtCtrls, AppEvnts;

type
  TFMyMessage = class(TMBaseForm)
    lblMessage1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    NewShomarehNameh: TEdit;
    lblMessage2: TLabel;
    oldshomarehnameh: TLabel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMyMessage: TFMyMessage;

implementation

{$R *.dfm}

procedure TFMyMessage.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFMyMessage.SpeedButton1Click(Sender: TObject);
begin
  inherited;
//  NewShomarehNameh.SelectAll;
//  NewShomarehNameh.CopyToClipboard;
end;

end.
