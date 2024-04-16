unit ReportSalaryFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, YDbgrid, DB, ADODB, StdCtrls, Buttons,
  YWhereEdit, ExtCtrls,BaseUnit, ExtActns, ActnList, CheckLst,
  YchecklistBox, DBCtrls, YINtegerField, ComCtrls,IdSMTP, Mask, Menus;

type
  TFmReportSalary = class(TMBaseForm)
    Panel1: TPanel;
    Label9: TLabel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Label6: TLabel;
    YWhereEdit6: TYWhereEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    User: TADOTable;
    UserId: TIntegerField;
    UserTitle: TWideStringField;
    UserUserName: TWideStringField;
    UserPassWord: TWideStringField;
    UserMarketerID: TWordField;
    UserDefaultProductID: TWordField;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    slrGetSalaryByPersonalID: TADOStoredProc;
    slrSalaryItems: TADOTable;
    slrGetSalaryByPersonalIDID: TAutoIncField;
    slrGetSalaryByPersonalIDPersonalID: TIntegerField;
    slrGetSalaryByPersonalIDmonth: TStringField;
    slrGetSalaryByPersonalIDSalaryItemID: TIntegerField;
    slrGetSalaryByPersonalIDAmount: TYIntegerField;
    slrGetSalaryByPersonalIDSalaryItemTitle: TStringField;
    slrGetSalaryByPersonalIDEffect: TIntegerField;
    dobtn: TBitBtn;
    Panel3: TPanel;
    slrGetSalaryTableByPersonalID: TADOStoredProc;
    DslrGetSalaryTableByPersonalID: TDataSource;
    slrGetSalaryTableByPersonalIDPlus: TYIntegerField;
    slrGetSalaryTableByPersonalIDMinus: TYIntegerField;
    slrGetSalaryTableByPersonalIDTitle: TWideStringField;
    slrGetSalaryTableByPersonalIDeffect: TSmallintField;
    slrGetSalaryByPersonalIDComment: TWideStringField;
    slrGetSalaryTableByPersonalIDcomment: TWideStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Salary: TYDBGrid;
    ContractGrid: TYDBGrid;
    TabSheet2: TTabSheet;
    SalaryList: TADOStoredProc;
    DSalaryList: TDataSource;
    YDBGrid: TYDBGrid;
    UserEmail: TStringField;
    UserAccountNo: TStringField;
    Button1: TButton;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    Button2: TButton;
    UserIsActive: TBooleanField;
    procedure dobtnClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ContractGridNeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure BitBtn1Click(Sender: TObject);
    procedure slrGetSalaryByPersonalIDAfterInsert(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     Password:string ;
  end;

var
  FmReportSalary: TFmReportSalary;

implementation

uses dmu, ExportToWord, YShamsiDate;

{$R *.dfm}

procedure TFmReportSalary.dobtnClick(Sender: TObject);
 begin
 with SalaryList do
  begin
    Close;
    Parameters.ParamByName('@month').Value:=copy(YWhereEdit6.SinceValue,1,7);
    Open;
  end;
if DBLookupComboBox1.KeyValue=null then exit;
  with slrGetSalaryTableByPersonalID do
   begin
    Close;
    Parameters.ParamByName('@PersonalID').Value:=DBLookupComboBox1.KeyValue;
    Parameters.ParamByName('@Month').Value:=copy(YWhereEdit6.SinceValue,1,7);
    Open;
    Salary.PrintTitle:=' ¬Ì „ Â«Ì ÕﬁÊﬁÌ  '+ DBLookupComboBox1.Text;
   end;

  with slrGetSalaryByPersonalID do
   begin
    Close;
    Parameters.ParamByName('@PersonalID').Value:=DBLookupComboBox1.KeyValue;
    Parameters.ParamByName('@Month').Value:=copy(YWhereEdit6.SinceValue,1,7);
    Open;
    Label1.Caption:='ÕﬁÊﬁ  ' +CommaSeperate(Parameters.ParamByName('@sum').Value);
    Label2.Caption:='Å—œ«Œ  ‘œÂ  ' +CommaSeperate(Parameters.ParamByName('@PaidAmount').Value);
    Label3.Caption:='’‰œÊﬁ  ' +CommaSeperate(Parameters.ParamByName('@CashAmount').Value);
    Label4.Caption:='„«‰œÂ  ' +CommaSeperate(Parameters.ParamByName('@Remain').Value);
   end;
 end;

procedure TFmReportSalary.BitBtn5Click(Sender: TObject);
begin
close;
end;

procedure TFmReportSalary.BitBtn2Click(Sender: TObject);
begin
 ContractGrid.Print;
end;

procedure TFmReportSalary.BitBtn3Click(Sender: TObject);
begin
if PageControl1.ActivePageIndex=0 then
 Salary.ExportToWord
else
 YDBGrid.ExportToWord;
end;

procedure TFmReportSalary.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TFmReportSalary.BitBtn6Click(Sender: TObject);
begin
  inherited;
 if PageControl1.ActivePageIndex=0 then
 ContractGrid.CustomizePrint
else
 YDBGrid.CustomizePrint; ;

end;

procedure TFmReportSalary.DBLookupComboBox1Click(Sender: TObject);
begin
  inherited;
dobtn.Click;
end;

procedure TFmReportSalary.FormCreate(Sender: TObject);
begin
  inherited;
User.Open;
YWhereEdit6.Text:=copy(ShamsiIncDate( _today,0,-1,0),1,7);
Password:='';
end;

procedure TFmReportSalary.ContractGridNeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
 if slrGetSalaryByPersonalIDEffect.AsInteger>0 then
  Color:=clWhite
  else
   color:=clSkyBlue
end;

procedure TFmReportSalary.BitBtn1Click(Sender: TObject);
begin
  inherited;
 if PageControl1.ActivePageIndex=0 then
 Salary.ExportToExcel
else
 YDBGrid.ExportToExcel;
end;

procedure TFmReportSalary.slrGetSalaryByPersonalIDAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
 slrGetSalaryByPersonalIDPersonalID.AsInteger:=DBLookupComboBox1.KeyValue;
 slrGetSalaryByPersonalIDmonth.AsString:=copy(YWhereEdit6.SinceValue,1,7);;
end;

procedure TFmReportSalary.Button1Click(Sender: TObject);
     var
files,Body:TStrings;
begin
  inherited;
  

  files:=TStringList.Create();
  Body:=TStringList.Create();
  salary.ExportToWord(_TempPath+UserId.AsString+'.docx');
  files.Add(_TempPath+UserId.AsString+'.docx') ;
  Body.Add('›Ì‘ ÕﬁÊﬁÌ');

Email_Send('info@yeganehsoft.com','123' , ' ›Ì‘ ÕﬁÊﬁÌ '+YWhereEdit6.Text  , 'info@yeganehsoft.com' , UserEmail.AsString ,
                    'smtp.shatel.ir' , 587 , 20000 ,files,body, false,atNone);
end;

procedure TFmReportSalary.Button2Click(Sender: TObject);
begin
  inherited;
  DBEdit1.SelectAll;
DBEdit1.CopyToClipboard;
end;

end.



