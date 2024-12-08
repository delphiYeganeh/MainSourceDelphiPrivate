unit UsearchStno;

interface

uses forms,  Classes, ActnList, ActnMan, StdCtrls,
 Dialogs,  Controls, Grids, DBGrids, YDbgrid, DB,  ADODB,Windows,
  ExtActns, BaseUnit, Menus, ExtCtrls;
type
  TSearchStno = class(TMBaseForm)
    DBG: TYDBGrid;
    Label2: TLabel;
    LookupEdit: TEdit;
    SearchF: TADODataSet;
    DsFrom: TDataSource;
    ActionList1: TActionList;
    Adone: TAction;
    AFail: TAction;
    Label1: TLabel;
    procedure DBGDblClick(Sender: TObject);
    procedure LookupEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LookupEditChange(Sender: TObject);
    procedure AdoneExecute(Sender: TObject);
    procedure AFailExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  SearchStno: TSearchStno;


implementation
uses YShamsiDate, Dmu;
{$R *.dfm}

 procedure TSearchStno.DBGDblClick(Sender: TObject);
begin
  inherited;
  Adone.Execute
end;
procedure TSearchStno.LookupEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 case key of
     Vk_Down,Vk_Up: DBG.SetFocus;
     vk_Return :Adone.Execute;
 end;
end;

procedure TSearchStno.LookupEditChange(Sender: TObject);
var s:string;
begin
  inherited;
    if is_integer(LookupEdit.Text) then
    s:=dm.RelatedIDField
   else
    s:=dm.RelatedDisplayField;

 with SearchF do
 if length(LookupEdit.Text)>=1  then
  begin
    Close;
    CommandText:='Select '+dm.RelatedIDField+' Code,'+dm.RelatedDisplayField+' Title from '+dm.RelatedTableName+
    ' where '+s+' like '''+replace(LookupEdit.Text,' ','')+'%''';
    open;
  end
end;

procedure TSearchStno.AdoneExecute(Sender: TObject);
begin
  inherited;
    IF DsFrom.DataSet.Active THEN
     BEGIN
      DM.SearchStringResult:=SearchF.Fields[0].AsString;
      Close;
     END; 
end;

procedure TSearchStno.AFailExecute(Sender: TObject);
begin
  inherited;
  DM.SearchStringResult:='*';
  close;
end;

procedure TSearchStno.FormCreate(Sender: TObject);
begin
  inherited;
  DM.SearchStringResult:='*';
end;

end.
