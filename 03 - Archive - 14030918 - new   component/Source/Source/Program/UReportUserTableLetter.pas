unit UReportUserTableLetter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Grids, DBGrids, YDbgrid, ExtCtrls, ActnList, DB,
  StdCtrls, ADODB, ExtActns, Buttons, xpWindow, xpBitBtn, ComCtrls, xpPages,
  Menus;

type
  TFrReportUserTableLetter = class(TMBaseForm)
    MakeRep: TxpBitBtn;
    Button3: TxpBitBtn;
    Button4: TxpBitBtn;
    Button5: TxpBitBtn;
    Report_UserTable: TADOStoredProc;
    Number: TLabel;
    Button6: TxpBitBtn;
    Action1: TAction;
    xpPageControl1: TxpPageControl;
    xpTabSheet1: TxpTabSheet;
    xpTabSheet2: TxpTabSheet;
    Panel1: TPanel;
    YDBGrid1: TYDBGrid;
    Panel3: TPanel;
    Panel2: TScrollBox;
    procedure MakeRepClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TableID:integer;
  end;

var
  FrReportUserTableLetter: TFrReportUserTableLetter;

implementation

uses Dmu, LetterFilterU, UMain, UReportUserTable;

{$R *.dfm}
procedure TFrReportUserTableLetter.MakeRepClick(Sender: TObject);
 var w:string;
 i: byte;
begin
  inherited;
  w:='(l.SecretariatID='+IntToStr(Dm.SecId)+')';
  if LetterFilter.Where<>'' then
    w:=w+' and '+LetterFilter.Where;

with Report_UserTable do
 begin
  Close;
  Parameters.ParamByName('@LetterWhere').Value:=w;
  Parameters.ParamByName('@UserTableWhere').Value:=FrReportUserTable.where;
  Parameters.ParamByName('@tableID').Value:=TableID;
  Open;
  Number.Caption:='  ⁄œ«œ :'+IntToStr(RecordCount)
 end;

 with YDBGrid1,Columns do
 for i:=0 to Count-1  do
   begin
     Columns[i].Width:=50;


  if Columns[i].FieldName = 'IndicatorID' then
   begin
    Columns[i].Title.Caption:='«‰œÌﬂ« Ê—';
    Columns[i].width:= 50   end;  if Columns[i].FieldName = 'LetterID' then
   begin
    Columns[i].visible:=false;
   end;  if Columns[i].FieldName='Memo' then
   begin    Columns[i].Title.Caption:='„÷„Ê‰';    Columns[i].width:= 220   end;  if Columns[i].FieldName='SenderTitle' then   begin    Columns[i].Title.Caption:='„Ê÷Ê⁄';    Columns[i].width:= 140   end;  if Columns[i].FieldName='DeliverTitle' then   begin    Columns[i].visible:=false;   end;  if Columns[i].FieldName='RegistrationDate' then   begin    Columns[i].Title.Caption:=' «—ÌŒ À» ';    Columns[i].width:= 74   end;  if Columns[i].FieldName='IncommingNO' then   begin    Columns[i].Title.Caption:='‘„«—Â ”‰œ';    Columns[i].width:= 100   end;  if Columns[i].FieldName='IncommingDate' then   begin    Columns[i].Title.Caption:=' «—ÌŒ Ê«—œÂ';    Columns[i].visible:=false;   end;  if Columns[i].FieldName='FollowLetterNo' then   begin    Columns[i].visible:=false;   end;  if Columns[i].FieldName='RetroactionNo' then   begin    Columns[i].visible:=false;   end;  if Columns[i].FieldName='UrgencyTitle' then   begin    Columns[i].visible:=false;   end;  if Columns[i].FieldName='LetterTypeTitle' then   begin    Columns[i].Title.Caption:='‰Ê⁄';    Columns[i].width:= 35   end;if Columns[i].FieldName='CenterNo' then  begin    Columns[i].visible:=false;  end;
if Columns[i].FieldName='CenterDate' then
  begin    Columns[i].visible:=false;  end;
if Columns[i].FieldName='UserMemo1' then
  begin
    //Columns[i].Title.Caption:=dm.UserMemo1;
    Columns[i].width:= 80
  end;
if Columns[i].FieldName='UserMemo2' then
  begin
  //  Columns[i].Title.Caption:=dm.UserMemo2;
    Columns[i].width:= 80
  end;
if Columns[i].FieldName='UserMemo3' then
  begin
   // Columns[i].Title.Caption:=dm.UserMemo3;
    Columns[i].width:= 80
  end;
if Columns[i].FieldName='LetterRecommites' then
  begin    Columns[i].visible:=false;  end;
 end;

end;

procedure TFrReportUserTableLetter.FormShow(Sender: TObject);
begin
  inherited;
 LetterFilter:=TLetterFilter.Create(self);
 LetterFilter.ShowInPanel(Panel1);
 FrReportUserTable:=TFrReportUserTable.Create(Application);
 FrReportUserTable.TableID:=TableID;
 FrReportUserTable.ShowInPanel(Panel2);
end;

procedure TFrReportUserTableLetter.Button4Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.ExportToExcel;
end;

procedure TFrReportUserTableLetter.Button3Click(Sender: TObject);
begin
  inherited;
 YDBGrid1.ExportToWord;
end;

procedure TFrReportUserTableLetter.Button6Click(Sender: TObject);
begin
  inherited;
 YDBGrid1.CustomizePrint;
end;

procedure TFrReportUserTableLetter.Action1Execute(Sender: TObject);
begin
  inherited;
 MakeRepClick(MakeRep);

end;

procedure TFrReportUserTableLetter.Button5Click(Sender: TObject);
begin
  inherited;
close;
end;

end.

