unit GroupDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  StdCtrls, Buttons, Mask, DBCtrls, DB, Grids, DBGrids,
  ActnList, ExtActns, ActnMan, XPStyleActnCtrls, BaseUnit;

type
  TGroupDialogF = class(TMBaseForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBECode: TDBEdit;
    DBETitle: TDBEdit;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    ActionManager: TActionManager;
    Dgroup: TDataSource;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
   done:boolean;
    { Public declarations }
  end;

var
  GroupDialogF: TGroupDialogF;

implementation

uses Dmu;

{$R *.dfm}

procedure TGroupDialogF.BitBtn1Click(Sender: TObject);
begin
  inherited;
done:=true;
end;

procedure TGroupDialogF.BitBtn2Click(Sender: TObject);
begin
  inherited;
done:=false;
end;

procedure TGroupDialogF.FormShow(Sender: TObject);
begin
  inherited;
DBETitle.SetFocus;
end;

end.
