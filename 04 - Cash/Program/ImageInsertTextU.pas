unit ImageInsertTextU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, BaseUnit,
  ExtActns, ActnList, DB, Menus;

type
  TFrImageInsertText = class(TYBaseForm)
    FontDialog1: TFontDialog;
    Panel1: TPanel;
    Button3: TBitBtn;
    Button2: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    PFont: TPanel;
    procedure PFontClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
   TextString:String;
    { Public declarations }
  end;

var
  FrImageInsertText: TFrImageInsertText;

implementation

{$R *.dfm}

procedure TFrImageInsertText.PFontClick(Sender: TObject);
begin
 if FontDialog1.Execute then
    PFont.Font:=FontDialog1.Font;
end;

procedure TFrImageInsertText.Button2Click(Sender: TObject);
begin
    TextString:=Edit1.Text;
    close;
end;

procedure TFrImageInsertText.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TFrImageInsertText.Button3Click(Sender: TObject);
begin
    TextString:='';
    close;

end;

end.
