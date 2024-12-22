unit UReportUserTableLetter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Grids, DBGrids, YDbgrid, ExtCtrls, ActnList, DB,
  StdCtrls, ADODB, ExtActns, Buttons, xpWindow, xpBitBtn, ComCtrls, xpPages,
  Menus;

type
  TFrReportUserTableLetter = class(TMBaseForm)
    Report_UserTable: TADOStoredProc;
    Action1: TAction;
    xpPageControl1: TxpPageControl;
    xpTabSheet1: TxpTabSheet;
    xpTabSheet2: TxpTabSheet;
    Panel1: TPanel;
    YDBGrid1: TYDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    MakeRep: TBitBtn;
    BtnSelColumn: TBitBtn;
    BtnExportToWord: TBitBtn;
    BtnExportToExcel: TBitBtn;
    Button5: TBitBtn;
    Number: TLabel;
    Label1: TLabel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Word1: TMenuItem;
    Excel1: TMenuItem;
    procedure MakeRepClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnExportToExcelClick(Sender: TObject);
    procedure BtnExportToWordClick(Sender: TObject);
    procedure BtnSelColumnClick(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Word1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TableID:integer;
  end;

var
  FrReportUserTableLetter: TFrReportUserTableLetter;

implementation

uses Dmu, LetterFilterU, UMain, UReportUserTable, YShamsiDate;

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
      Number.Caption:='  ⁄œ«œ : '+IntToStr(RecordCount)
   end;

   with YDBGrid1,Columns do
      for i:=0 to Count-1  do
      begin
         {Ranjbar 89.05.18 ID=10}
         //Columns[i].Width:=50;
         Columns[i].Width:=80;
         //---

         if Columns[i].FieldName = 'IndicatorID' then
         begin
            Columns[i].Title.Caption := '«‰œÌﬂ« Ê—';
            Columns[i].width:= 50;
         end;
         if Columns[i].FieldName = 'LetterID' then
         begin
            Columns[i].visible := False;
         end;

         {Ranjbar 89.05.18 ID=10}
         if Columns[i].FieldName = 'Memo' then
         begin
            Columns[i].Title.Caption := 'Œ·«’Â';
            Columns[i].width:= 220;
         end;

         if Columns[i].FieldName = 'UserMemo' then
         begin
            Columns[i].Title.Caption := ' Ê÷ÌÕ« ';
            Columns[i].width:= 220;
         end;
         //---
         if Columns[i].FieldName = 'SenderTitle' then
         begin
            Columns[i].Title.Caption := '„Ê÷Ê⁄';
            Columns[i].width:= 140;
         end;
         if Columns[i].FieldName = 'DeliverTitle' then
         begin
            Columns[i].visible := False;
            {Ranjbar 89.05.18 ID=10}
            Columns[i].Title.Caption := 'êÌ—‰œÂ';
            Columns[i].width:= 100;
            //---
         end;
         if Columns[i].FieldName = 'RegistrationDate' then
         begin
            Columns[i].Title.Caption := ' «—ÌŒ À» ';
            Columns[i].width:= 74;
         end;
         if Columns[i].FieldName = 'IncommingNO' then
         begin
            Columns[i].Title.Caption := '‘„«—Â ”‰œ';
            Columns[i].width:= 100;
         end;
         if Columns[i].FieldName = 'IncommingDate' then
         begin
            Columns[i].Title.Caption := ' «—ÌŒ Ê«—œÂ';
            Columns[i].width:= 100;
            Columns[i].visible := false;
         end;

         {Ranjbar 89.05.18 ID=10}
         {if Columns[i].FieldName = 'FollowLetterNo' then
         begin
            Columns[i].visible := false;
         end;
         if Columns[i].FieldName = 'RetroactionNo' then
         begin
            Columns[i].visible := false;
         end;
         if Columns[i].FieldName = 'UrgencyTitle' then
         begin
            Columns[i].visible := false;
         end;}
         //---
         if Columns[i].FieldName = 'LetterTypeTitle' then
         begin
            Columns[i].Title.Caption := '‰Ê⁄ ”‰œ';
            Columns[i].width := 50;
         end;

         if Columns[i].FieldName = 'CenterNo' then
         begin
            Columns[i].visible := false;
            {Ranjbar 89.05.18 ID=10}
            Columns[i].Title.Caption := '‘„«—Â „—ﬂ“ »«Ìê«‰Ì';
            //---
         end;

         if Columns[i].FieldName = 'CenterDate' then
         begin
            Columns[i].visible := false;
            {Ranjbar 89.05.18 ID=10}
            Columns[i].Title.Caption := ' «—ÌŒ ”‰œ „—ﬂ“ »«Ìê«‰Ì';
            //---
         end;

         {Ranjbar 89.05.18 ID=10}
         {if Columns[i].FieldName = 'UserMemo1' then
         begin
            Columns[i].Title.Caption := dm.UserMemo1;
            Columns[i].width := 80;

         end;
         if Columns[i].FieldName = 'UserMemo2' then
         begin
            Columns[i].Title.Caption := dm.UserMemo2;
            Columns[i].width := 80;
         end;
         if Columns[i].FieldName = 'UserMemo3' then
         begin
            Columns[i].Title.Caption := dm.UserMemo3;
            Columns[i].width := 80;
         end;
         if Columns[i].FieldName = 'LetterRecommites' then
         begin
            Columns[i].visible := false;
         end;}
      end;
end;

procedure TFrReportUserTableLetter.FormShow(Sender: TObject);
begin
   inherited;
   LetterFilter := TLetterFilter.Create(self);
   LetterFilter.ShowInPanel(Panel1);
   FrReportUserTable:=TFrReportUserTable.Create(Application);
   FrReportUserTable.TableID:=TableID;
   FrReportUserTable.ShowInPanel(Panel2);
end;

procedure TFrReportUserTableLetter.BtnExportToExcelClick(Sender: TObject);
begin
  inherited;
  YDBGrid1.ExportToExcel;
end;

procedure TFrReportUserTableLetter.BtnExportToWordClick(Sender: TObject);
begin
   inherited;
   YDBGrid1.ExportToWord;
end;

procedure TFrReportUserTableLetter.BtnSelColumnClick(Sender: TObject);
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


procedure TFrReportUserTableLetter.FormCreate(Sender: TObject);
begin
  inherited;
  {Ranjbar 89.05.18 ID=10}
  xpPageControl1.ActivePageIndex := 1;
  //---
end;

procedure TFrReportUserTableLetter.N1Click(Sender: TObject);
begin
   inherited;
   BtnSelColumn.Click;
end;

procedure TFrReportUserTableLetter.Word1Click(Sender: TObject);
begin
   inherited;
   BtnExportToWord.Click;
end;

procedure TFrReportUserTableLetter.Excel1Click(Sender: TObject);
begin
   inherited;
   BtnExportToExcel.Click;
end;

end.

