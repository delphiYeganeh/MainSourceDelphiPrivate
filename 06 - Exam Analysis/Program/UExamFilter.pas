unit UExamFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, CheckLst, YchecklistBox, DBCtrls, ExtCtrls,
  DB, ExtActns, ActnList, YWhereEdit, ComCtrls, Mask, xpWindow, UemsVCL;

type
  TFrExamFilter = class(TMBaseForm)
    Label1: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit1: TYWhereEdit;
    DBEdit3: TYWhereEdit;
    DBEdit7: TYWhereEdit;
    DBLookupComboBox1: TYWhereEdit;
    DBLookupComboBox2: TYWhereEdit;
    DBLookupComboBox3: TYWhereEdit;
   Procedure ShowInPanel(P:TWinControl);

  private
    { Private declarations }
  public
   function Where:string;
    { Public declarations }
  end;

var
  FrExamFilter: TFrExamFilter;

implementation

uses dmu, Math;

{$R *.dfm}

Procedure TFrExamFilter.ShowInPanel(P:TWinControl);
 begin
   ManualDock(p,nil,alClient);
   Show;
   Align:=alClient;
 end;

function TFrExamFilter.Where:string;
 var i: integer;
 begin
  Result:='';
  for i:=0 to ComponentCount-1 do
    begin
    if Components[i].ClassNameIs('TYWhereEdit') then
    if TYWhereEdit(Components[i]).Resultwhere<>'' then
      Result:=Result+' and '+TYWhereEdit(Components[i]).Resultwhere;

 
    end;

   if Result<>'' then
     delete(Result,1,5);
 end;

end.
