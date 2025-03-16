unit UApplicantFilter;

interface

uses    Forms,dialogs, Classes, DB,StdCtrls,Graphics,DBCtrls,UemsVCL,
  ActnList, Controls, Grids, DBGrids, YDbgrid, DBLookupEdit,sysutils,Windows,YWhereEdit,
  ExtActns, xpWindow, Mask, ADODB, BaseUnit;


type
  TFApplicantFilter = class(TMBaseForm)
    DSForm: TDataSource;              Report_Applicant: TADOStoredProc;
    Report_ApplicantApplicantID: TAutoIncField;
    Report_ApplicantApplicantCode: TStringField;
    Report_ApplicantFirstName: TWideStringField;
    Report_ApplicantLastName: TWideStringField;
    Report_ApplicantFullName: TWideStringField;
    Report_ApplicantMajorID: TSmallintField;
    Report_ApplicantTermcode: TStringField;
    Report_ApplicantEducationGroupCode: TStringField;
    Report_ApplicantEducationGroupTitle: TWideStringField;
    Report_ApplicantFacultyTitle: TWideStringField;
    Report_ApplicantLevelTitle: TWideStringField;
    Report_ApplicantMajorCode: TStringField;
    Report_ApplicantMajorTitle: TWideStringField;
    Label1: TLabel;
    DBEdit1: TYWhereEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TYWhereEdit;
    Label3: TLabel;
    DBEdit3: TYWhereEdit;
    Label4: TLabel;
    DBEdit4: TYWhereEdit;
    Label5: TLabel;
    DBEdit5: TYWhereEdit;
    Label6: TLabel;
    DBEdit6: TYWhereEdit;
    Label7: TLabel;
    DBEdit7: TYWhereEdit;
    Label8: TLabel;
    DBEdit8: TYWhereEdit;
    Label9: TLabel;
    YWhereEdit1: TYWhereEdit;
function Where:String;
Procedure ShowInPanel(P:TWinControl);

   private
    { Private declarations }
   public

    { Private declarations }
  end;

var
  FApplicantFilter: TFApplicantFilter;

implementation

uses Dmu, ShowmessageU, businessLayer;


{$R *.dfm}
function TFApplicantFilter.Where:String;
 var i: integer;
 w: string;
begin
w:='';
 for i:=0 to  ComponentCount-1 do
   if Components[i].ClassNameIs('TYWhereEdit') then
    if  TYWhereEdit(Components[i]).Resultwhere<> '' then
     if w<>'' then
      w:=w+' and '+TYWhereEdit(Components[i]).Resultwhere
     else
      w:=TYWhereEdit(Components[i]).Resultwhere ;
 result:=w;
 end;
Procedure TFApplicantFilter.ShowInPanel(P:TWinControl);
 begin
   ManualDock(p,nil,alClient);
   Show;
   Align:=alClient;
 end;

end.
