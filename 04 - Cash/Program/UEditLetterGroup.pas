unit UEditLetterGroup;

interface

uses    Forms,dialogs, Classes, DB,StdCtrls,Graphics,DBCtrls,UemsVCL,
  ActnList, Controls, Grids, DBGrids, YDbgrid, DBLookupEdit,sysutils,Windows,YWhereEdit,
  ExtActns, Buttons, Mask,baseunit, xpWindow, xpBitBtn, ExtCtrls;


type
  TFEditLetterGroup = class(TMBaseForm)
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;

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
