unit USearchTitle;

interface

uses forms,  Classes, ActnList, ActnMan, StdCtrls,
 Dialogs,  Controls, Grids, DBGrids, YDbgrid, DB, BaseUnit, ADODB,Windows,SysUtils,
  ExtActns, xpWindow, ExtCtrls;
type
  TSearchAdoDataSet = class(TMBaseForm)
    SearchF: TADODataSet;
    ActionList1: TActionList;
    Adone: TAction;
    AFail: TAction;
    Panel1: TPanel;
    LookupEdit: TEdit;
    Label2: TLabel;
    Panel2: TPanel;
    DBG: TYDBGrid;
    procedure DBGDblClick(Sender: TObject);
    procedure LookupEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LookupEditChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdoneExecute(Sender: TObject);
    procedure AFailExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
   TableName:string;
   CodeField ,TitleField :string;
  SearchDataSet: boolean;   
    { Public declarations }
  end;
var
  SearchAdoDataSet: TSearchAdoDataSet;


implementation

uses YShamsiDate, Dmu;
{$R *.dfm}

 procedure TSearchAdoDataSet.DBGDblClick(Sender: TObject);
begin
  inherited;
  Adone.Execute
end;
procedure TSearchAdoDataSet.LookupEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
case key of
     Vk_Down,Vk_Up: DBG.SetFocus;
     vk_Return :Adone.Execute;
 end;
end;

procedure TSearchAdoDataSet.LookupEditChange(Sender: TObject);
begin
  inherited;
  if is_integer(LookupEdit.Text) then
    DSForm.DataSet.Locate(CodeField,LookupEdit.Text,[lopartialkey])
 else
    DSForm.DataSet.Locate(TitleField,LookupEdit.Text,[lopartialkey])
end;

procedure TSearchAdoDataSet.FormShow(Sender: TObject);
var i: byte;
begin
  inherited;
  if CodeField='' then CodeField:='Code';
  if TitleField='' then TitleField:='Title';
  if not SearchDataSet then
   begin
    if pos('select',LowerCase(TableName))=0 then
       TableName:='select '+CodeField+','+TitleField+' from '+ TableName;

    SearchF.CommandText:=TableName;
    SearchF.Open;
  end;
    with dbg do
     for i:=0 to Columns.Count-1 do
     with Columns[i] do
      begin
        if (pos('CODE',UpperCase(FieldName))<>0) or (UpperCase(FieldName)='ID')or (UpperCase(FieldName)='DATAID') Then
          begin
           Title.Caption:='˜Ï';
           Width:=60;
          end;
       if (UpperCase(FieldName)='TITLE') or (UpperCase(FieldName)='NAME')or (UpperCase(FieldName)='DATATITLE') Then
          begin
           Title.Caption:='ÚäæÇä';
           Width:=240;
          end;
      end;
end;

procedure TSearchAdoDataSet.AdoneExecute(Sender: TObject);
begin
  inherited;
    DM.SearchResult:=DSForm.DataSet.FieldByName(CodeField).AsInteger;
    Close;
end;

procedure TSearchAdoDataSet.AFailExecute(Sender: TObject);
begin
  inherited;
  DM.SearchResult:=-1;
  close;
end;

procedure TSearchAdoDataSet.FormCreate(Sender: TObject);
begin
  inherited;
  DM.SearchResult:=-1;
end;

end.
