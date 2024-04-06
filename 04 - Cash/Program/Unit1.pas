unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB,DBTables,ComObj,
  YDbgrid;

type
  TForm1 = class(TForm)
    dtable1: TDataSource;
    BitBtn2: TBitBtn;
    Table1: TADOTable;
    BitBtn4: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    YDBGrid1: TYDBGrid;
    Q_DeleteT: TADOQuery;
    BitBtn1: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     function import(tab: TADOTable; SFile: string): Boolean;
  end;

var
  Form1: TForm1;

implementation

uses dmu;

{$R *.dfm}

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
if import(table1,'D:\Excel\File_V.xls') then
  ShowMessage('D:\Excel\File_V.xls has been imported!');

end;

Function TForm1.import(tab: TADOTable; SFile: string): Boolean;
Const    xlCellTypeLastCell = $0000000B;
Var
      XLApp, Sheet: OLEVariant;
      x, y, r,row: Integer;
begin
        tab.CLOSE;
        Q_DeleteT.ExecSQL;
        Result := False;
        XLApp := CreateOleObject('Excel.Application');
        Try
        XLApp.Visible := False;
        XLApp.Workbooks.Open(SFile); //open file
        Sheet := XLApp.Workbooks[ExtractFileName(SFile)].WorkSheets[1];
        Sheet.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Activate;
        row := XLApp.ActiveCell.Row;
        y := XLApp.ActiveCell.Column;
        x := 2; //number of row in excel start import

        tab.Open;
        Repeat
            tab.Append;
            for r := 1 to y do
            Begin
              tab.Fields[y-r].AsString:= XLApp.Cells.Item[x, r].Value;
            End;
            r:=1; // don’t remove this value, to keep value columns
            tab.Post;
            Inc(x, 1);
//          Until XLApp.Cells.Item[x, r].Value='';
          Until x=row;
        Finally

        IF not VarIsEmpty(XLApp) then
        Begin
            XLApp.Quit;
            XLAPP := Unassigned;
            Sheet := Unassigned;
            Result := True;
        End;

        end;
END;


procedure TForm1.BitBtn4Click(Sender: TObject);
begin
if import(table1,'D:\Excel\File_S.xls') then
  ShowMessage('D:\Excel\File_s.xls has been imported!');
// table1.Refresh;

end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  WHILE NOT Table1.Eof DO
  BEGIN
  END;//WHILE
end;

end.


