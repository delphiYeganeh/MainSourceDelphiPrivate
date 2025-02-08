unit Report;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, YDbgrid, DB, ADODB, StdCtrls, Buttons,
  YWhereEdit, ExtCtrls;

type
  TFrep = class(TForm)
    addresses: TADOQuery;
    Daddresses: TDataSource;
    YDBGrid2: TYDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    YwhereEdit0: TYWhereEdit;
    YWhereEdit1: TYWhereEdit;
    YWhereEdit2: TYWhereEdit;
    YWhereEdit3: TYWhereEdit;
    YWhereEdit4: TYWhereEdit;
    YWhereEdit5: TYWhereEdit;
    YWhereEdit6: TYWhereEdit;
    YWhereEdit7: TYWhereEdit;
    YWhereEdit8: TYWhereEdit;
    YWhereEdit9: TYWhereEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frep: TFrep;

implementation

{$R *.dfm}

procedure TFrep.BitBtn1Click(Sender: TObject);
 var i: byte;
  s,where :string;
 begin
   for i:=0 to 9 do
     begin
      s:=TYWhereEdit(FindComponent('YwhereEdit'+IntToStr(i))).Resultwhere;
      if s<>'' then
       where:=where+' and ('+s+')';
     end;
 with addresses do
   begin
     close;
     sql.Text:='Select *, case when LTrim(RTrim(isnull(CompanyName,'''')))<>'''''+
 ' then isnull([CompanyName],'''')+''(''+isnull(Lastname,'''')+'' - ''+isnull(firstname,'''')+'')'' '+
 ' else isnull(Lastname,'''')+'' - ''+isnull(firstname,'''') end as nickname from addresses adrs';
     if where<>'' then
       sql.Text:=SQL.Text+' where '+copy(where,6,length(where)-5);
    Open;
  end;
end;

procedure TFrep.BitBtn5Click(Sender: TObject);
begin
close;
end;

procedure TFrep.BitBtn2Click(Sender: TObject);
begin
 YDBGrid2.Print;
end;

procedure TFrep.BitBtn3Click(Sender: TObject);
begin
 YDBGrid2.ExportToWord; 
end;

procedure TFrep.BitBtn4Click(Sender: TObject);
begin
 YDBGrid2.CustomizePrint;
end;

procedure TFrep.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

end.
