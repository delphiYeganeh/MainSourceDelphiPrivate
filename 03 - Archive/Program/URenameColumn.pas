unit URenameColumn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFmRenameColumn = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
      ShowMessage('áØİÇ ãŞÏÇÑ ÌÏíÏ ÈÑÇí äÇã ÓÊæä ÇäÊÎÇÈ ˜äíÏ');
  end
  else
    ShowMessage('áØİÇ ÓÊæä ãæÑÏ äÙÑ ÎæÏ ÑÇ ÇäÊÎÇÈ ˜äíÏ');
end;

end.
