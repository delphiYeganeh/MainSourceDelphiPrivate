 unit USearchTitle;

interface

uses forms,  Classes, ActnList, ActnMan, StdCtrls,
 Dialogs,  Controls, Grids, DBGrids, YDbgrid, DB, BaseUnit, ADODB,Windows,SysUtils,
  ExtActns, ExtCtrls;
type
  TSearchAdoDataSet = class(TForm)
    DBG: TYDBGrid;
    SearchF: TADODataSet;
    ActionList1: TActionList;
    Adone: TAction;
    AFail: TAction;
    dsform: TDataSource;
    Panel1: TPanel;
    LookupEdit: TEdit;
    Label2: TLabel;
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

uses dmu, YShamsiDate;

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
    if pos('select',TableName)=0 then
       TableName:='select '+CodeField+','+TitleField+' from '+ TableName;

    SearchF.CommandText:=TableName;
    SearchF.Open;
  end;
    dbg.Columns[0].Title.Caption:='��';
    dbg.Columns[1].Title.Caption:='�����';
    with dbg do
     for i:=0 to Columns.Count-1 do
     with Columns[i] do
      begin
        if (pos('CODE',UpperCase(FieldName))<>0) or (UpperCase(FieldName)='ID') Then
          begin
           Title.Caption:='��';
           Width:=80;
          end;
       if (UpperCase(FieldName)='TITLE') or (UpperCase(FieldName)='NAME') Then
          begin
           Title.Caption:='�����';
           Width:=200;
          end;
     end;
     LookupEdit.SetFocus;
end;

procedure TSearchAdoDataSet.AdoneExecute(Sender: TObject);
begin
  inherited;
    DM.SearchResult:= DSForm.DataSet.FieldByName(CodeField).Value;
    Close;
end;

procedure TSearchAdoDataSet.AFailExecute(Sender: TObject);
begin
  inherited;
  DM.SearchResult:='';
  close;
end;

procedure TSearchAdoDataSet.FormCreate(Sender: TObject);
begin
  inherited;
  DM.SearchResult:='';
end;

end.
