unit InsertText;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,  BaseUnit, 
  ExtActns, ActnList, DB, Menus;

type
  TInsertTextForm = class(TMbaseForm)
    Label1: TLabel;
    Edit1: TEdit;
    PFont: TPanel;
    FontDialog1: TFontDialog;
    Button2: TBitBtn;
    Button3: TBitBtn;
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
  InsertTextForm: TInsertTextForm;

implementation

{$R *.dfm}

procedure TInsertTextForm.PFontClick(Sender: TObject);
begin
 if FontDialog1.Execute then
    PFont.Font:=FontDialog1.Font;
end;

procedure TInsertTextForm.Button2Click(Sender: TObject);
begin
    TextString:=Edit1.Text;
    close;
end;

procedure TInsertTextForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TInsertTextForm.Button3Click(Sender: TObject);
begin
    TextString:='';
    close;

end;

end.
