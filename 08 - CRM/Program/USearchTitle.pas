unit USearchTitle;

interface

uses forms,  Classes, ActnList, ActnMan, StdCtrls,
 Dialogs,  Controls, Grids, DBGrids, YDbgrid, DB, BaseUnit, ADODB,Windows,SysUtils,
  ExtActns, Menus;
type
  TSearchAdoDataSet = class(TMBaseForm)
    DBG: TYDBGrid;
    Label2: TLabel;
    LookupEdit: TEdit;
    SearchF: TADODataSet;
    ActionList1: TActionList;
    Adone: TAction;
    AFail: TAction;
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
with DSForm.DataSet do
  if LookupEdit.Text <> '' then
  begin
    if is_integer(LookupEdit.Text) then
        begin
          Filtered :=False;
//          Filter := CodeField +' = ''*'+Trim(LookupEdit.Text)+'*''';
          Filter := 'CodeFieldStr like ''%'+Trim(LookupEdit.Text)+'%''';

          Filtered :=True;
        end
  //    DSForm.DataSet.Locate(CodeField,LookupEdit.Text,[lopartialkey])
     else
        begin
          Filtered :=False;
          Filter := TitleField +' like '+'''%'+Trim(LookupEdit.Text)+'%''';
          Filtered :=True;
        end
   end
   else         Filtered :=False;
  //  DSForm.DataSet.Locate(TitleField,LookupEdit.Text,[lopartialkey])
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
       TableName:='select cast('+CodeField+' as nvarchar ) CodeFieldStr ,'+CodeField+','+TitleField+' from '+ TableName;

    SearchF.CommandText:=TableName;
    SearchF.Open;
  end;
    with dbg do
     for i:=0 to Columns.Count-1 do
     with Columns[i] do
      begin
        if i = 0 then Visible :=False;
        if (pos('CODE',UpperCase(FieldName))<>0) or (pos('ID',UpperCase(FieldName))<>0) Then
          begin
           Title.Caption:='˜Ï';
           Width:=60;
          end;
        if (pos('TITLE',UpperCase(FieldName))<>0) or (pos('NAME',UpperCase(FieldName))<>0) Then
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
