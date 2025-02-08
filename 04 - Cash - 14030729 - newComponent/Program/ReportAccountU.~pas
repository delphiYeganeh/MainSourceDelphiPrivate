 unit ReportAccountU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, ExtCtrls, Grids, DBGrids, YDbgrid,
   StdCtrls, ActnList, Menus, Buttons, AdvGlowButton, xpPanel;

type
  TFrReportAccount = class(TYBaseForm)
    FilterPanel: TxpPanel;
    Panel1: TPanel;
    MakeRep: TAdvGlowButton;
    Button2: TAdvGlowButton;
    Button3: TAdvGlowButton;
    Button4: TAdvGlowButton;
    Button5: TAdvGlowButton;
    Button6: TAdvGlowButton;
    Panel2: TPanel;
    YDBGrid1: TYDBGrid;
    pnlMain: TPanel;
    procedure MakeRepClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
   { TODO -oparsa : 14030701 }
   {
   FrAccountFilter:=TFrAccountFilter.Create(self);
   FrAccountFilter.Align := alTop ;
   FrAccountFilter.ShowInPanel(FilterPanel);
   }
   { TODO -oparsa : 14030701 }
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

procedure TFrReportAccount.FormCreate(Sender: TObject);
begin
  inherited;
   { TODO -oparsa : 14030701 }
   FrAccountFilter:=TFrAccountFilter.Create(self);
   FrAccountFilter.Align := alTop ;
   FrAccountFilter.ShowInPanel(FilterPanel);
   { TODO -oparsa : 14030701 }
end;

end.
