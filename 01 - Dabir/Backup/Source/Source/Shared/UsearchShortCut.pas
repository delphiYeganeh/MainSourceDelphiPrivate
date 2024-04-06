unit UsearchShortCut;
                                                                                                  
interface

uses forms,  Classes, ActnList, ActnMan, StdCtrls,
 Dialogs,  Controls, Grids, DBGrids, YDbgrid, DB, BaseUnit, ADODB,Windows,SysUtils,
  ExtActns, DBCtrls, ExtCtrls, Menus;
type
  TFrsearchShortCut = class(TMBaseForm)
    DBG: TYDBGrid;
    SearchF: TADODataSet;
    ActionList1: TActionList;
    Adone: TAction;
    AFail: TAction;
    Panel1: TPanel;
    LookupEdit: TEdit;
    DBMemo1: TDBMemo;
    procedure DBGDblClick(Sender: TObject);
    procedure LookupEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LookupEditChange(Sender: TObject);
    procedure AdoneExecute(Sender: TObject);
    procedure AFailExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
  end;
var
  FrsearchShortCut: TFrsearchShortCut;


implementation

uses YShamsiDate, Dmu;
{$R *.dfm}

 procedure TFrsearchShortCut.DBGDblClick(Sender: TObject);
begin
  inherited;
  Adone.Execute
end;
procedure TFrsearchShortCut.LookupEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
case key of
     Vk_Down,Vk_Up: DBG.SetFocus;
     vk_Return :Adone.Execute;
 end;
end;

procedure TFrsearchShortCut.LookupEditChange(Sender: TObject);
begin
  inherited;
  dm.UserShortCut.Locate('keytext',LookupEdit.Text,[lopartialkey]);
end;

procedure TFrsearchShortCut.AdoneExecute(Sender: TObject);
begin
  inherited;
    DM.keytext:=dm.UserShortCutkeyText.AsString;
    Close;
end;

procedure TFrsearchShortCut.AFailExecute(Sender: TObject);
begin
  inherited;
  DM.keytext:='';
  close;
end;

procedure TFrsearchShortCut.FormCreate(Sender: TObject);
begin
  inherited;
  DM.SearchResult:=-1;
end;

procedure TFrsearchShortCut.FormShow(Sender: TObject);
begin
  inherited;
LookupEdit.SetFocus;
end;

end.
