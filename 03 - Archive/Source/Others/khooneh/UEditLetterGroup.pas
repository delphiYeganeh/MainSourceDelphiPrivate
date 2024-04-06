unit UEditLetterGroup;

interface

uses    Forms,dialogs, Classes, DB,StdCtrls,Graphics,DBCtrls,UemsVCL,
  ActnList, Controls, Grids, DBGrids, YDbgrid, DBLookupEdit,sysutils,Windows,YWhereEdit,
  ExtActns, Buttons, Mask,baseunit, xpWindow, xpBitBtn;


type
  TFEditLetterGroup = class(TMBaseForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    BitBtn1: TxpBitBtn;
    BitBtn2: TxpBitBtn;

    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

   private
    { Private declarations }
   public

    { Private declarations }
  end;

var
  FEditLetterGroup: TFEditLetterGroup;

implementation

uses Dmu;


{$R *.dfm}

procedure TFEditLetterGroup.BitBtn2Click(Sender: TObject);
begin
dm.LetterTemplate.Cancel;
  ModalResult := mrCancel;
end;

procedure TFEditLetterGroup.BitBtn1Click(Sender: TObject);
begin
dm.LetterTemplate.Post;
ModalResult := mrOK;

end;

end.
