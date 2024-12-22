unit UTaskReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtActns, ActnList, DB, ExtCtrls, MssCalendarPro,
  ADODB, Buttons, StdCtrls, DBCtrls, Mask, xpPanel, Grids, DBGrids, YDbgrid,
  YWhereEdit;

type
  TFTaskReport = class(TMBaseForm)
    pnlMain: TPanel;
    dbgTask: TYDBGrid;
    Panel1: TPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    BtnCancel: TBitBtn;
    BitBtn1: TBitBtn;
    SpTaskReport: TADOStoredProc;
    MssCalendarPro1: TMssCalendarPro;
    xpPanel1: TxpPanel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    dblProductId: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    dblCaseTypeId: TDBLookupComboBox;
    dblCasePriorityId: TDBLookupComboBox;
    edtBugId: TYWhereEdit;
    RGCompleted: TRadioGroup;
    DBLookupComboBox3: TDBLookupComboBox;
    YWhereEdit1: TYWhereEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    pnlCustomer: TPanel;
    Label6: TLabel;
    SpeedButton4: TSpeedButton;
    edtCustomerId: TYWhereEdit;
    Edit2: TEdit;
    Label10: TLabel;
    dblUser: TDBLookupComboBox;
    Button2: TButton;
    DBDate: TDBEdit;
    Label1: TLabel;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    Customer: TADOTable;
    CustomerCustomerID: TAutoIncField;
    CustomerCompanyName: TWideStringField;
    CustomerCode: TStringField;
    SpeedButton5: TSpeedButton;
    ADOTable1: TADOTable;
    AutoIncField1: TAutoIncField;
    WideStringField1: TWideStringField;
    SpTaskReportCaseTitle: TStringField;
    SpTaskReportComment: TStringField;
    SpTaskReportProductId: TIntegerField;
    SpTaskReportCaseTypeID: TIntegerField;
    SpTaskReportCasePriorityId: TIntegerField;
    SpTaskReportCustomerID: TIntegerField;
    SpTaskReportRegisterDate: TStringField;
    SpTaskReportRegisterUserID: TIntegerField;
    SpTaskReportCompleteDate: TStringField;
    SpTaskReportCompleteComment: TStringField;
    SpTaskReportIsBug: TBooleanField;
    SpTaskReportProductTitle: TStringField;
    SpTaskReportAssignUserTitle: TStringField;
    SpTaskReportTaskStatusTitle: TStringField;
    SpTaskReportCasePriorityTitle: TStringField;
    SpTaskReportCompleted: TBooleanField;
    SpTaskReportCaseID: TLargeintField;
    SpTaskReportProductVersion: TIntegerField;
    SpTaskReportAssignedComment: TStringField;
    SpTaskReportcustomercaseid: TStringField;
    Label2: TLabel;
    DBDateTo: TDBEdit;
    SpeedButton6: TSpeedButton;
    RGTypeRep: TRadioGroup;
    SpTaskReportFirstUser: TStringField;
    lblCount: TLabel;
    DUser: TDataSource;
    User: TADOTable;
    UserId: TIntegerField;
    UserTitle: TWideStringField;
    UserUserName: TWideStringField;
    UserPassWord: TWideStringField;
    UserMarketerID: TWordField;
    UserDefaultProductID: TWordField;
    UserEmail: TStringField;
    UserAccountNo: TStringField;
    UserAccessID: TIntegerField;
    UserIsActive: TBooleanField;
    UserIsAdmin: TBooleanField;
    UserUserTypeId: TWordField;
    UserShowContract: TBooleanField;
    UserEditContract: TBooleanField;
    UserShowAllCustomer: TBooleanField;
    UserExportCustomerList: TBooleanField;
    UserExportFollow: TBooleanField;
    UserShowMyAction: TBooleanField;
    UserBtnAllContract: TBooleanField;
    UserBtnAllAct: TBooleanField;
    UserISWinServer: TBooleanField;
    UserPinFollowUp: TBooleanField;
    UserThemTypeColor: TIntegerField;
    UserColor1: TStringField;
    UserColor2: TStringField;
    UserColor3: TStringField;
    UserColor4: TStringField;
    UserAccAcess: TBooleanField;
    UserCallAccess: TBooleanField;
    UserAssesstAcess: TBooleanField;
    UserFactorAccess: TBooleanField;
    UserEditVersion: TBooleanField;
    UserManagerSale: TBooleanField;
    UserManagerProduction: TBooleanField;
    UserManagerSupport: TBooleanField;
    UserManagerOfficial: TBooleanField;
    UserLastVertionLogin: TStringField;
    UserNewPassWord: TStringField;
    QrUser: TADOQuery;
    QrUserID: TIntegerField;
    QrUserTitle: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTaskReport: TFTaskReport;

implementation

Uses dmu;

{$R *.dfm}

procedure TFTaskReport.FormShow(Sender: TObject);
begin
  inherited;
  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color         := _Color1 ;

  xpPanel1.StartColor := _Color1 ;
  xpPanel1.EndColor   := _Color2 ;

  xpPanel1.TitleStartColor :=  _Color3;
  xpPanel1.TitleEndColor   :=  _Color4;

  Dm.RefreshHoliday(copy(_today,1,4));
  MssCalendarPro1.HolidayStr := dm.HolidayStr;

  with dm do
  begin
    tblCaseType     .Open;
    tblCaseOriginal .Open;
    tblCasePriority .Open;
  end;

  Customer.Close;
  Customer.Open;
  QrUser.Close;
  QrUser.Open;
end;

procedure TFTaskReport.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin

  if (NewWidth < 1156)  or (NewHeight < 506) then
    Resize := False
  else Resize := True;

  inherited;

end;

procedure TFTaskReport.Button2Click(Sender: TObject);
begin
  inherited;
  dblUser.KeyValue := Null;
end;

procedure TFTaskReport.Button1Click(Sender: TObject);
begin
  inherited;
  dblCaseTypeId.KeyValue := Null;
end;

procedure TFTaskReport.Button3Click(Sender: TObject);
begin
  inherited;
  dblProductId.KeyValue := Null;
end;

procedure TFTaskReport.Button4Click(Sender: TObject);
begin
  inherited;
  dblCasePriorityId.KeyValue := Null;
end;

procedure TFTaskReport.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  Dm.SearchTable(Customer,'CustomerID','CompanyName');
  if Dm.SearchResult>0 then
  BEGIN

    edtCustomerId.Text:= IntToStr(dm.SearchResult);
    Edit2.Text  := CustomerCompanyName.AsString;

  END;
end;

procedure TFTaskReport.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  DBDate.Text := MssCalendarPro1.Execute('/');
end;

procedure TFTaskReport.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if SpTaskReport.Active then
  if SpTaskReport.RecordCount >0 then
    dbgTask.ExportToExcel;
end;

procedure TFTaskReport.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if SpTaskReport.Active then
  if SpTaskReport.RecordCount >0 then
    dbgTask.Print;
end;

procedure TFTaskReport.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if SpTaskReport.Active then
  if SpTaskReport.RecordCount >0 then
    dbgTask.ExportToWord;
end;

procedure TFTaskReport.BitBtn1Click(Sender: TObject);
begin
  inherited;
  SpTaskReport.Close;
  SpTaskReport.parameters.ParamByName('@Customerid').value    := 0 ;
  SpTaskReport.parameters.ParamByName('@ProductId').value     := 0 ;
  SpTaskReport.parameters.ParamByName('@TypeId').value        := 0 ;
  SpTaskReport.parameters.ParamByName('@PriorityId').value    := 0 ;
  SpTaskReport.parameters.ParamByName('@UserId').value        := 0 ;
  SpTaskReport.parameters.ParamByName('@CaseId').value        := 0 ;
  SpTaskReport.parameters.ParamByName('@State').value         := 0 ;
  SpTaskReport.parameters.ParamByName('@ToDate').value        := '0' ;
  SpTaskReport.parameters.ParamByName('@ToDateTo').value      := '0' ;
  SpTaskReport.parameters.ParamByName('@TypeRep').value       := 0 ;


  if edtCustomerId.Text <> '' then
    SpTaskReport.parameters.ParamByName('@Customerid').value   := StrToInt(edtCustomerId.Text) ;

  if not(dblProductId.KeyValue = null) and (dblProductId.KeyValue > 0 )   then
    SpTaskReport.parameters.ParamByName('@ProductId').value    := dblProductId.KeyValue ;

  if not(dblCaseTypeId.KeyValue = null) and (dblCaseTypeId.KeyValue > 0 )   then
    SpTaskReport.parameters.ParamByName('@TypeId').value    := dblCaseTypeId.KeyValue ;

  if not(dblCasePriorityId.KeyValue = null) and (dblCasePriorityId.KeyValue > 0 )   then
    SpTaskReport.parameters.ParamByName('@PriorityId').value    := dblCasePriorityId.KeyValue ;

  if not(dblUser.KeyValue = null) and (dblUser.KeyValue > 0 )  then
    SpTaskReport.parameters.ParamByName('@UserId').value   := dblUser.KeyValue ;


  if DBDate.Text <> ''  then
    SpTaskReport.parameters.ParamByName('@ToDate').value       := DBDate.Text ;

  if DBDateTo.Text <> ''  then
    SpTaskReport.parameters.ParamByName('@ToDateTo').value       := DBDateTo.Text ;

  if edtBugId.Text <> ''  then
    SpTaskReport.parameters.ParamByName('@CaseId').value       := edtBugId.Text ;

  SpTaskReport.parameters.ParamByName('@TypeRep').value       :=  RGTypeRep.ItemIndex ;

  SpTaskReport.parameters.ParamByName('@State').value  :=  RGCompleted.ItemIndex ;

  SpTaskReport.Open;

  lblCount.Caption := ' йзого : '+ IntToStr(dbgTask.DataSource.DataSet.RecordCount);
end;

procedure TFTaskReport.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  DBDateTo.Text := MssCalendarPro1.Execute('/');
end;

end.
