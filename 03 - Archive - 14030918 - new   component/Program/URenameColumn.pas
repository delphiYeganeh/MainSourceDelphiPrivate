unit URenameColumn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, AdvGlowButton;

type
  TFmRenameColumn = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Button1: TAdvGlowButton;
    Button2: TAdvGlowButton;
    pnlMain: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    OldID   : integer;
    NewName : string;
  end;

var
  FmRenameColumn: TFmRenameColumn;

implementation

uses Dmu, businessLayer;

{$R *.dfm}

procedure TFmRenameColumn.Button1Click(Sender: TObject);
begin
  OldID := -1;
  close;
end;

procedure TFmRenameColumn.Button2Click(Sender: TObject);
begin
  if ComboBox1.ItemIndex>=0 then
  begin
    if Trim(Edit1.Text)<>'' then
    begin
      OldID := ComboBox1.ItemIndex;
      NewName := Edit1.Text;
      close;
    end
    else
      ShowMessage('·ÿ›« „ﬁœ«— ÃœÌœ »—«Ì ‰«„ ” Ê‰ «‰ Œ«» ò‰Ìœ');
  end
  else
    ShowMessage('·ÿ›« ” Ê‰ „Ê—œ ‰Ÿ— ŒÊœ —« «‰ Œ«» ò‰Ìœ');
end;

procedure TFmRenameColumn.FormCreate(Sender: TObject);
begin
  Self.Color := _Color1 ;
  Self.Font.Name :=  _MainFont ;
end;

end.
