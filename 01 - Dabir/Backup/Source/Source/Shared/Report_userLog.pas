unit Report_userLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, YWhereEdit, xpWindow, ExtActns, ActnList, DB,
  ExtCtrls, xpBitBtn, Grids, DBGrids, YDbgrid, ADODB, Buttons, Menus,
  AppEvnts;

type
  TFrReport_userLog = class(TMBaseForm)
    YDBGrid1: TYDBGrid;
    Number: TLabel;
    MakeRep: TBitBtn;
    Button6: TBitBtn;
    Button3: TBitBtn;
    Button4: TBitBtn;
    Button5: TBitBtn;
    Panel1: TPanel;
    Report_UserLog: TADOStoredProc;
    Label27: TLabel;
    Label13: TLabel;
    Label3: TLabel;
    YWhereEdit27: TYWhereEdit;
    YWhereEdit11: TYWhereEdit;
    YWhereEdit3: TYWhereEdit;
    Label2: TLabel;
    YWhereEdit2: TYWhereEdit;
    Label11: TLabel;
    YWhereEdit13: TYWhereEdit;
    edCount: TEdit;
    Label1: TLabel;
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    function  Where:string;
    procedure MakeRepClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrReport_userLog: TFrReport_userLog;

implementation

uses Dmu, FromOrgU, businessLayer;

{$R *.dfm}

function TFrReport_userLog.Where:string;
var
  i: byte;
begin
  for i:=0 to ComponentCount-1 do
    if Components[i].ClassNameIs('TYWhereEdit') then
      if TYWhereEdit(Components[i]).Resultwhere <> '' then
        Result := Result + ' and ' + TYWhereEdit(Components[i]).Resultwhere + '';

  if Result<>'' then
    Result := copy(Result, 6, length(Result)-5);
end;

procedure TFrReport_userLog.Button4Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.ExportToExcel;
end;

procedure TFrReport_userLog.Button3Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.ExportToWord;
end;

procedure TFrReport_userLog.Button6Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.CustomizePrint;
end;

procedure TFrReport_userLog.MakeRepClick(Sender: TObject);
var
  c : integer;
begin
  inherited;
  try
    c := StrToInt(edCount.Text);
  except
    c := 1000;
  end;

  with Report_UserLog,Parameters do
  begin
    close;
    ParamByName('@SecretariatID').Value:= dm.SecID;
    ParamByName('@myear').Value:= dm.CurrentMyear;
    ParamByName('@Count').Value:= IntToStr(C);
    ParamByName('@where').Value:= where;
    Open;
    Number.Caption:='йзого  : '+ IntToStr(RecordCount)
  end;
end;

procedure TFrReport_userLog.Button5Click(Sender: TObject);
begin
  inherited;
  close;
end;

end.
