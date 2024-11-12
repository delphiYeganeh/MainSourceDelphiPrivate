unit UselectSec;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Mask , BaseUnit, Menus, DB, DBCtrls,
  xpBitBtn,  ExtActns, ActnList, AppEvnts, xpPanel, AdvGlowButton;

type
  TFselectSec = class(TMBaseForm)
    dUserSecs: TDataSource;
    Panel1: TxpPanel;
    Panel2: TPanel;
    BitBtn2: TAdvGlowButton;
    BitBtn1: TAdvGlowButton;
    chboxSendLetterWithoutChange: TCheckBox;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    pnlMain: TPanel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    SelectedSecID: Integer;
    intChboxSendLetterWithoutChange : Integer;
    TransferSecid : Boolean;
  end;

var
  FselectSec: TFselectSec;

implementation

uses Dmu, UMain;



{$R *.DFM}

procedure TFselectSec.BitBtn2Click(Sender: TObject);
begin
  TransferSecid := True;
  SelectedSecID := DBLookupComboBox1.KeyValue;

  intChboxSendLetterWithoutChange := 0;

  if chboxSendLetterWithoutChange.Checked then
    intChboxSendLetterWithoutChange := 1;
  Close;
end;

procedure TFselectSec.BitBtn1Click(Sender: TObject);
begin
  SelectedSecID := -1;
  intChboxSendLetterWithoutChange := 0;
  Close;
end;

procedure TFselectSec.FormShow(Sender: TObject);
begin
  inherited;
  SelectedSecID := -1 ;
  DBLookupComboBox1.KeyValue := -1;
  TransferSecid := False;
end;

end.
