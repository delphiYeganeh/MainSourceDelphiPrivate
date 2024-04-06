unit U_VERSION_INFO_EDIT_FRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls;

type
  TVERSION_INFO_EDIT_FRM = class(TForm)
    DBEdit1: TDBEdit;
    DBText1: TDBText;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBMemo1: TDBMemo;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    Label8: TLabel;
    DBComboBox1: TDBComboBox;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VERSION_INFO_EDIT_FRM: TVERSION_INFO_EDIT_FRM;

implementation

uses U_VERSION_INFO_FRM;

{$R *.dfm}

procedure TVERSION_INFO_EDIT_FRM.BitBtn1Click(Sender: TObject);
begin
CLOSE;
end;

end.
