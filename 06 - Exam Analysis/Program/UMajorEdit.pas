unit UMajorEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, xpWindow, ActnList, DBCtrls, StdCtrls, Mask, xpBitBtn;

type
  TFrMajorEdit = class(TMBaseForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    xpBitBtn1: TxpBitBtn;
    xpBitBtn2: TxpBitBtn;
    procedure xpBitBtn2Click(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrMajorEdit: TFrMajorEdit;

implementation

uses dmu;

{$R *.dfm}

procedure TFrMajorEdit.xpBitBtn2Click(Sender: TObject);
begin
  inherited;
dm.Select_Major_by_EducationGroupID.Post;
close;
end;

procedure TFrMajorEdit.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
dm.Select_Major_by_EducationGroupID.Cancel;
close;

end;

end.
