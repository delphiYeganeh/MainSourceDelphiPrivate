unit PasswordChange;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, Buttons, ActnList, DB, Mask, DBCtrls,
  ExtCtrls;

type
  TBaseForm1 = class(TForm)
    Label7: TLabel;
    Password: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Image1: TImage;
    Panel2: TPanel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BaseForm1: TBaseForm1;

implementation

uses Dmu;

{$R *.dfm}

end.
