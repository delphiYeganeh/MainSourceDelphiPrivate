unit UEditLetterGroup;

interface

uses    Forms,dialogs, Classes, DB,StdCtrls,Graphics,DBCtrls,UemsVCL,
  ActnList, Controls, Grids, DBGrids, YDbgrid, DBLookupEdit,sysutils,Windows,YWhereEdit,
  ExtActns, Buttons, Mask,baseunit,  xpBitBtn, Menus, ExtCtrls, AppEvnts,
  AdvGlowButton;


type
  TFEditLetterGroup = class(TMBaseForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    pnlMain: TPanel;
    Panel1: TPanel;
    BitBtn2: TAdvGlowButton;
    BitBtn1: TAdvGlowButton;

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
