unit untCustStatusReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, Buttons, Grids, DBGrids, YDbgrid, ExtCtrls,
  ExtActns, ActnList, DB, ADODB, CheckLst, YchecklistBox, DBCtrls;

type
  TfrmCustStatusReport = class(TMBaseForm)
    Panel1: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    CustGrid: TYDBGrid;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    ADOQuery: TADOQuery;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Button1: TButton;
    Button2: TButton;
    DProduct: TDataSource;
    Product: TADOQuery;
    ProductProductID: TWordField;
    ProductProductTitle: TWideStringField;
    ProductComment: TWideStringField;
    ProductProductCategoryID: TWordField;
    ProductCommisionPercent: TWordField;
    ProductCode: TStringField;
    ProductLastVertion: TStringField;
    ProductIsNetwork: TBooleanField;
    ProductavgFollouwup: TIntegerField;
    ADOQueryId: TAutoIncField;
    ADOQueryCustomerStatusID: TIntegerField;
    ADOQueryCustomerStatusTitle: TStringField;
    ADOQueryOne: TIntegerField;
    ADOQueryTwo: TIntegerField;
    ADOQueryThree: TIntegerField;
    ADOQueryFour: TIntegerField;
    ADOQueryFive: TIntegerField;
    ADOQuerySix: TIntegerField;
    ADOQuerySeven: TIntegerField;
    ADOQueryEight: TIntegerField;
    ADOQueryNine: TIntegerField;
    ADOQueryTen: TIntegerField;
    ADOQueryEleven: TIntegerField;
    ADOQueryTwelve: TIntegerField;
    DBLkCBGroupTitle: TDBLookupComboBox;
    Label4: TLabel;
    Button3: TButton;
    DGroup: TDataSource;
    Group: TADOQuery;
    GroupGroupID: TAutoIncField;
    GroupGroupTitle: TWideStringField;
    GroupGroupNo: TStringField;
    Groupeffect: TWordField;
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CustGridNeedFontCondition(Column: TColumn;
      State: TGridDrawState; var F: TFont);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCustStatusReport: TfrmCustStatusReport;

implementation

uses dmu;

{$R *.dfm}

procedure TfrmCustStatusReport.BitBtn1Click(Sender: TObject);
 function GetCount(Year : string;Month, CustStatusId:Integer):Integer;
 var
  TempQuery : TADOQuery;
  Date, WhereClause : String;
  begin
   Case Month of
    1 : Date := Year + '/0' + IntToStr(Month);
    2 : Date := Year + '/0' + IntToStr(Month);
    3 : Date := Year + '/0' + IntToStr(Month);
    4 : Date := Year + '/0' + IntToStr(Month);
    5 : Date := Year + '/0' + IntToStr(Month);
    6 : Date := Year + '/0' + IntToStr(Month);
    7 : Date := Year + '/0' + IntToStr(Month);
    8 : Date := Year + '/0' + IntToStr(Month);
    9 : Date := Year + '/0' + IntToStr(Month);
    10 : Date := Year + '/' + IntToStr(Month);
    11 : Date := Year + '/' + IntToStr(Month);
    12 : Date := Year + '/' + IntToStr(Month);
   end;
   TempQuery := TADOQuery.Create(Nil);
   try
    WhereClause := '';
    if DBLookupComboBox1.KeyValue <> Null then
     WhereClause := ' And CompaginID = ' + IntToStr(DBLookupComboBox1.KeyValue);
    if DBLookupComboBox2.KeyValue <> Null then
     begin
      if WhereClause = '' then
       WhereClause := ' And CustomerProduct.ProductId = ' + IntToStr(DBLookupComboBox2.KeyValue)
      else
       WhereClause := WhereClause + ' And CustomerProduct.ProductId = ' + IntToStr(DBLookupComboBox2.KeyValue);
     end;
    if DBLkCBGroupTitle.KeyValue <> Null then
     begin
      if WhereClause = '' then
       WhereClause := ' And GroupId = ' + IntToStr(DBLkCBGroupTitle.KeyValue)
      else
       WhereClause := WhereClause + ' And GroupId = ' + IntToStr(DBLkCBGroupTitle.KeyValue);
     end;
    TempQuery.Connection := Dm.YeganehConnection;
    TempQuery.Close;
    if CustStatusId = 0 then
     TempQuery.SQL.Text := 'Select Count(*) From Customer Where InsertDate Like ''%' + Date + '%''' + WhereClause
    else
     TempQuery.SQL.Text := 'Select Count(*) From Customer Where InsertDate Like ''%' + Date + '%'' And CustomerStatusID = ' + IntToStr(CustStatusId) + WhereClause;
    if DBLookupComboBox2.KeyValue <> Null then
     begin
      if CustStatusId = 0 then
       TempQuery.SQL.Text := ' Select Count(*) From Customer ' +
                             ' Inner Join CustomerProduct on CustomerProduct.CustomerId = Customer.CustomerId ' +
                             ' Where InsertDate Like ''%' + Date + '%''' + WhereClause
      else
       TempQuery.SQL.Text := ' Select Count(*) From Customer ' +
                             ' Inner Join CustomerProduct on CustomerProduct.CustomerId = Customer.CustomerId ' +
                             ' Where InsertDate Like ''%' + Date + '%'' And CustomerStatusID = ' + IntToStr(CustStatusId) + WhereClause;
     end;
    TempQuery.Open;
    Result := TempQuery.Fields[0].AsInteger;
   finally
    FreeAndNil(TempQuery);
   end;
  end;
var
 MainQuery, RowQuery, ColQuery : TADOQuery;
 I, J : Integer;
 S : TAlignment;
begin
  inherited;
  S := taCenter;
  MainQuery := TADOQuery.Create(Nil);
  try
   MainQuery.Connection := Dm.YeganehConnection;
   MainQuery.Close;
   MainQuery.SQL.Text := 'Truncate Table CustomerStatusReport';
   MainQuery.ExecSQL;
   MainQuery.Close;
   MainQuery.SQL.Text := 'select * from CustomerStatus';
   MainQuery.Open;
    while not MainQuery.Eof do
    begin
     RowQuery := TADOQuery.Create(Nil);
     try
      RowQuery.Connection := Dm.YeganehConnection;
      RowQuery.Close;
      RowQuery.SQL.Text := 'Insert Into CustomerStatusReport(CustomerStatusID, CustomerStatusTitle) Values(' + MainQuery.Fields[0].AsString + ',' + QuotedStr(MainQuery.Fields[1].AsString) + ')';
      RowQuery.ExecSQL;
      ColQuery := TADOQuery.Create(Self);
      try
      ColQuery.Connection := Dm.YeganehConnection;
      ColQuery.Close;
      ColQuery.SQL.Text := 'Update CustomerStatusReport Set One = ' + IntToStr(GetCount(ComboBox1.Text,1,MainQuery.Fields[0].AsInteger)) +
                           ',Two = ' + IntToStr(GetCount(ComboBox1.Text,2,MainQuery.Fields[0].AsInteger)) +
                           ',Three = ' + IntToStr(GetCount(ComboBox1.Text,3,MainQuery.Fields[0].AsInteger)) +
                           ',Four = ' + IntToStr(GetCount(ComboBox1.Text,4,MainQuery.Fields[0].AsInteger)) +
                           ',Five = ' + IntToStr(GetCount(ComboBox1.Text,5,MainQuery.Fields[0].AsInteger)) +
                           ',Six = ' + IntToStr(GetCount(ComboBox1.Text,6,MainQuery.Fields[0].AsInteger)) +
                           ',Seven = ' + IntToStr(GetCount(ComboBox1.Text,7,MainQuery.Fields[0].AsInteger)) +
                           ',Eight = ' + IntToStr(GetCount(ComboBox1.Text,8,MainQuery.Fields[0].AsInteger)) +
                           ',Nine = ' + IntToStr(GetCount(ComboBox1.Text,9,MainQuery.Fields[0].AsInteger)) +
                           ',Ten = ' + IntToStr(GetCount(ComboBox1.Text,10,MainQuery.Fields[0].AsInteger)) +
                           ',Eleven = ' + IntToStr(GetCount(ComboBox1.Text,11,MainQuery.Fields[0].AsInteger)) +
                           ',Twelve = ' + IntToStr(GetCount(ComboBox1.Text,12,MainQuery.Fields[0].AsInteger)) + ' Where CustomerStatusID = ' + MainQuery.Fields[0].AsString;
      ColQuery.ExecSQL;
      finally
       FreeAndNil(ColQuery);
      end;
      RowQuery.Close;
      RowQuery.SQL.Text := 'Update CustomerStatusReport Set CustomerStatusTitle = ''���'' Where CustomerStatusID = 0';
      RowQuery.ExecSQL;
     finally
      FreeAndNil(RowQuery);
     end;
    MainQuery.Next;
    end;
  finally
   FreeAndNil(MainQuery);
  end;
  ADOQuery.Close;
  ADOQuery.Open;
  CustGrid.Columns[5].Alignment := S;
end;


procedure TfrmCustStatusReport.SpeedButton1Click(Sender: TObject);
begin
  inherited;
if (_ExportCustomerList) then
      CustGrid.ExportToWord else ShowMessage('��� ���� ����� ����� �� ���� �� ������');
end;

procedure TfrmCustStatusReport.SpeedButton3Click(Sender: TObject);
begin
  inherited;
if (_ExportCustomerList) then CustGrid.ExportToExcel
 else ShowMessage('��� ���� ����� ����� �� ���� �� ������');
end;

procedure TfrmCustStatusReport.SpeedButton2Click(Sender: TObject);
begin
  inherited;
if (_ExportCustomerList) then CustGrid.Print
 else ShowMessage('��� ���� ����� ����� �� ���� �� ������');
end;

procedure TfrmCustStatusReport.CustGridNeedFontCondition(Column: TColumn;
  State: TGridDrawState; var F: TFont);
begin
  inherited;
  if CustGrid.DataSource.DataSet.FieldByName('CustomerStatusTitle').Value = '���' then
   begin
    f.Color := clBlue;
    F.Size := 12;
   end;
end;

procedure TfrmCustStatusReport.FormShow(Sender: TObject);
begin
  inherited;
 Dm.Compagin.Open;
 Product.Open;
 dm.Select_Customer_By_CustomerID.Open;
 DBLkCBGroupTitle.KeyValue := Null;
end;

procedure TfrmCustStatusReport.Button1Click(Sender: TObject);
begin
  inherited;
 DBLookupComboBox2.KeyValue := Null;
end;

procedure TfrmCustStatusReport.Button2Click(Sender: TObject);
begin
  inherited;
 DBLookupComboBox1.KeyValue := Null;
end;

procedure TfrmCustStatusReport.Panel2Click(Sender: TObject);
begin
  inherited;
 CustGrid.CustomizePrint;
end;

procedure TfrmCustStatusReport.Button3Click(Sender: TObject);
begin
  inherited;
 DBLkCBGroupTitle.KeyValue := Null;
end;

end.