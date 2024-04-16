unit FrReportFollowUP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, YDbgrid, DB, ADODB, StdCtrls, Buttons,
  YWhereEdit, ExtCtrls,BaseUnit, ExtActns, ActnList, Menus;

type
  TFrep1 = class(TMBaseForm)
    YDBGrid2: TYDBGrid;
    Panel1: TPanel;
    ahmadvand: TLabel;
    Report_FollowUp: TADOStoredProc;
    DBEdit1: TYWhereEdit;
    DBEdit2: TYWhereEdit;
    DBEdit3: TYWhereEdit;
    DBLookupComboBox1: TYWhereEdit;
    Label5: TLabel;
    DBLookupComboBox2: TYWhereEdit;
    Label6: TLabel;
    DBLookupComboBox3: TYWhereEdit;
    Label7: TLabel;
    DBEdit4: TYWhereEdit;
    Label8: TLabel;
    DBEdit5: TYWhereEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn7: TBitBtn;
    SpeedButton5: TSpeedButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frep1: TFrep1;

implementation

uses dmu, ExportToWord, GroupExportToWord;

{$R *.dfm}

procedure TFrep1.BitBtn1Click(Sender: TObject);
 var i: byte;
  s,where :string;
 begin
   for i:=0 to 13 do
     begin
      s:=TYWhereEdit(FindComponent('YwhereEdit'+IntToStr(i))).Resultwhere;
      if s<>'' then
       where:=where+' and ('+s+')';
     end;
  if where<>'' then
   where:=copy(where,6,length(where)-5);


 with Report_FollowUp do
   begin
    close;
    Parameters.ParamByName('@where').Value:=where;
    Parameters.ParamByName('@Productid').Value:=_ProductID;
    Open;
    ahmadvand.Caption:='йзого ='+IntToStr(RecordCount);
  end;
end;

procedure TFrep1.BitBtn2Click(Sender: TObject);
begin
 YDBGrid2.Print;
end;

procedure TFrep1.BitBtn3Click(Sender: TObject);
begin
 YDBGrid2.ExportToWord; 
end;

procedure TFrep1.BitBtn8Click(Sender: TObject);
begin
 YDBGrid2.CreateWord;
end;

procedure TFrep1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TFrep1.BitBtn7Click(Sender: TObject);
begin
  inherited;
 FrMakeGroupExport:=TFrMakeGroupExport.Create(Application);
 FrMakeGroupExport.ShowModal;

end;

procedure TFrep1.BitBtn6Click(Sender: TObject);
begin
  inherited;
 YDBGrid2.CustomizePrint;

end;

procedure TFrep1.SpeedButton5Click(Sender: TObject);
begin
   inherited;
   close;
end;

end.



