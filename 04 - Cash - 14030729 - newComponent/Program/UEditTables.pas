unit UEditTables;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, Buttons, Grids, DBGrids, ExtActns, ActnList,
  DB;

type
  TEditTables = class(TMBaseForm)
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EditTables: TEditTables;

implementation

uses Dmu, ADODB;

{$R *.dfm}

procedure TEditTables.BitBtn3Click(Sender: TObject);
begin
  inherited;
Close;
end;

procedure TEditTables.BitBtn1Click(Sender: TObject);
begin
  inherited;
 with dm,Tables do
  begin
   Edit;
   TablesDescription.AsString:=InputBox('‰«„ ÃœÊ·','‰«„ ÃœÊ·',TablesDescription.AsString);
   Post;
  end;
end;

procedure TEditTables.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('¬Ì« «“ Õ–› ÃœÊ·  '+QuotedStr(dm.TablesDescription.AsString )+' „ÿ„∆‰ Â” Ìœ',mtConfirmation,[mbyes,mbno],0)=mryes then
     try
        dm.ExecCommand('drop table '+dm.TablesTableName.AsString);
        dm.ExecCommand('delete from fields where tableid= '+dm.TablesTableId.AsString);
        dm.Tables.Delete;
     except
     end;
end;

procedure TEditTables.FormCreate(Sender: TObject);
begin
  inherited;
 with dm.Tables do if not Active then Open;
end;

end.
