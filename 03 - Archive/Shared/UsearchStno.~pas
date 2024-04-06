unit UsearchStno;

interface

uses forms,  Classes, ActnList, ActnMan, StdCtrls,
 Dialogs,  Controls, Grids, DBGrids, YDbgrid, DB,  ADODB,Windows,
  ExtActns, BaseUnit, xpWindow, ExtCtrls;
type
  TSearchStno = class(TMBaseForm)
    SearchF: TADODataSet;
    DsFrom: TDataSource;
    ActionList1: TActionList;
    Adone: TAction;
    AFail: TAction;
    Panel1: TPanel;
    LookupEdit: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    DBG: TYDBGrid;
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
    s:=dm.CodeField
   else
    s:=dm.TitleField;

 with SearchF do
 if length(LookupEdit.Text)>=2  then
  begin
    Close;
    CommandText:='Select '+dm.CodeField+' Code,'+dm.TitleField+' Title from '+dm.MainTableName+
    ' where '+s+' like '''+replace(LookupEdit.Text,' ','')+'%''';
    open;
  end
end;

procedure TSearchStno.AdoneExecute(Sender: TObject);
begin
  inherited;
    IF DsFrom.DataSet.Active THEN
     BEGIN
      DM.SearchStResult:=SearchF.Fields[0].AsString;
      Close;
     END; 
end;

procedure TSearchStno.AFailExecute(Sender: TObject);
begin
  inherited;
  DM.SearchStResult:='*';
  close;
end;

procedure TSearchStno.FormCreate(Sender: TObject);
begin
  inherited;
  DM.SearchStResult:='*';
end;

end.
