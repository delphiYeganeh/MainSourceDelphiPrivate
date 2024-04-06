 unit ReportAccountU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, ExtCtrls, Grids, DBGrids, YDbgrid,
   StdCtrls, ActnList, Menus, Buttons;

type
  TFrReportAccount = class(TYBaseForm)
    FilterPanel: TPanel;
    Panel1: TPanel;
    MakeRep: TBitBtn;
    Button2: TBitBtn;
    Button3: TBitBtn;
    Button4: TBitBtn;
    Button5: TBitBtn;
    Button6: TBitBtn;
    Panel2: TPanel;
    YDBGrid1: TYDBGrid;
    procedure MakeRepClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrReportAccount: TFrReportAccount;

implementation

uses DMU, AccountFilterU, BusinessLayer;

{$R *.dfm}


procedure TFrReportAccount.MakeRepClick(Sender: TObject);
begin
  inherited;
  Open_Report_Account2(1,FrAccountFilter.Where);
  YDBGrid1.UpdateFooter;
end;

procedure TFrReportAccount.FormShow(Sender: TObject);
 var i: integer;
begin
   inherited;
   FrAccountFilter:=TFrAccountFilter.Create(self);
   FrAccountFilter.ShowInPanel(FilterPanel);
   dm.ContactType.Locate('ContactTypeID',1,[]);
   with dm,YDBGrid1,Columns do
      for i:=0 to Count-1 do
         if UpperCase(Columns[i].FieldName)='USERFIELD1'  then
            Columns[i].Title.Caption:=ContactTypeUserField1Title.AsString else
         if UpperCase(Columns[i].FieldName)='USERFIELD2'  then
            Columns[i].Title.Caption:=ContactTypeUserField2Title.AsString else
         if UpperCase(Columns[i].FieldName)='FAMILYTITLE'  then
            Columns[i].Title.Caption:=Get_SystemSetting('FamilyTitle')    else
         if UpperCase(Columns[i].FieldName)='PERSONALNO'  then
            Columns[i].Title.Caption:=Get_SystemSetting('PersonalTitle');
end;

procedure TFrReportAccount.Button6Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.CustomizePrint;
end;

procedure TFrReportAccount.Button3Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.ExportToWord;
end;

procedure TFrReportAccount.Button4Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.ExportToExcel;
end;

procedure TFrReportAccount.Button2Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.Print;
end;

procedure TFrReportAccount.Button5Click(Sender: TObject);
begin
  inherited;
  close;
end;

end.
