unit RepMohlateEghdamUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Menus, ExtActns, ActnList, DB, ExtCtrls, Grids,Dmu,
  DBGrids, YDbgrid, StdCtrls, Buttons, Mask, MssDBGrid, MssCalendarPro;

type
  TFRepMohlateEghdam = class(TMBaseForm)
    Panel2: TPanel;
    YDBGrid1: TMssDBGrid;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    cmbFilter: TComboBox;
    edtDate: TMaskEdit;
    acRep: TAction;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    MssCalendarPro1: TMssCalendarPro;
    procedure acRepExecute(Sender: TObject);
    procedure cmbFilterCloseUp(Sender: TObject);
    procedure FormShow(Sender: TObject);
//    procedure YDBGrid1NeedColorCondition(Column: TColumn;
//      State: TGridDrawState; var Color: TColor);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    FFromOrgID: Integer;
    { Private declarations }
    procedure SetSQlString;
    procedure SetGridColumnSize;
    procedure SetOrgID;
    procedure SetFromOrgID(const Value: Integer);
  public
    { Public declarations }
    property FromOrgID:Integer read FFromOrgID write SetFromOrgID;
  end;

var
  FRepMohlateEghdam: TFRepMohlateEghdam;

implementation

uses UMain,ADODB;


{$R *.dfm}

procedure TFRepMohlateEghdam.acRepExecute(Sender: TObject);
begin
  SetSQlString;
  case cmbFilter.ItemIndex of
   -1:
     begin
        Dm.qRepMohlateEghdam.SQL.Add('AND((rc.DeadLineDate<='+QuotedStr(Trim(edtDate.Text))+'))');
        Dm.qRepMohlateEghdam.SQL.Add('AND((L.FromOrgID='+QuotedStr(IntToStr(FromOrgID))+'))');
     end;
   0:
      begin
        Dm.qRepMohlateEghdam.SQL.Add('AND((rc.DeadLineDate<='+QuotedStr(Trim(edtDate.Text))+'))');
        Dm.qRepMohlateEghdam.SQL.Add('AND((L.FromOrgID='+QuotedStr(IntToStr(FromOrgID))+'))');
      end;
   1:
      begin
        Dm.qRepMohlateEghdam.SQL.Add('AND((rc.DeadLineDate='+QuotedStr(Trim(edtDate.Text))+'))');
        Dm.qRepMohlateEghdam.SQL.Add('AND((L.FromOrgID='+QuotedStr(IntToStr(FromOrgID))+'))');
      end;
   2:
      begin
        Dm.qRepMohlateEghdam.SQL.Add('AND((rc.DeadLineDate>='+QuotedStr(Trim(edtDate.Text))+'))');
        Dm.qRepMohlateEghdam.SQL.Add('AND((L.FromOrgID='+QuotedStr(IntToStr(FromOrgID))+'))');
      end;
  end;


  // ShowMessage(Dm.qRepMohlateEghdam.SQL.Text);
  Dm.qRepMohlateEghdam.Open;
end;

procedure TFRepMohlateEghdam.cmbFilterCloseUp(Sender: TObject);
begin
  edtDate.SetFocus;
end;

procedure TFRepMohlateEghdam.SetGridColumnSize;
var
  i : Integer;
begin
  for i:=0  to YDBGrid1.Columns.Count-1 do
  begin
    if YDBGrid1.Columns.Items[i].FieldName='IndicatorID' then
      YDBGrid1.Columns.Items[i].Width:=50
    else if YDBGrid1.Columns.Items[i].FieldName='lkLetterType' then
      YDBGrid1.Columns.Items[i].Width:=40
    else if YDBGrid1.Columns.Items[i].FieldName='MYear' then
      YDBGrid1.Columns.Items[i].Width:=40
    else if YDBGrid1.Columns.Items[i].FieldName='IncommingNO' then
      YDBGrid1.Columns.Items[i].Width:=80
    else if YDBGrid1.Columns.Items[i].FieldName='lkfromorganization' then
      YDBGrid1.Columns.Items[i].Width:=120
    else if YDBGrid1.Columns.Items[i].FieldName='lktoorganization' then
      YDBGrid1.Columns.Items[i].Width:=120
    else if YDBGrid1.Columns.Items[i].FieldName='DeadLineDate' then
      YDBGrid1.Columns.Items[i].Width:=64
    else if YDBGrid1.Columns.Items[i].FieldName='viewdate' then
      YDBGrid1.Columns.Items[i].Width:=64
    else if YDBGrid1.Columns.Items[i].FieldName='Memo' then
      YDBGrid1.Columns.Items[i].Width:=120
    else if YDBGrid1.Columns.Items[i].FieldName='LetterRecommites' then
      YDBGrid1.Columns.Items[i].Width:=400
    else if YDBGrid1.Columns.Items[i].FieldName='SecTitle' then
      YDBGrid1.Columns.Items[i].Width:=100
  end;
end;

procedure TFRepMohlateEghdam.SetSQlString;
begin
  dm.qRepMohlateEghdam.Close;
  dm.qRepMohlateEghdam.SQL.Clear;
  dm.qRepMohlateEghdam.SQL.Add('SELECT L.LetterID,L.IndicatorID, L.MYear, l.Letter_Type,L.IncommingNO,');
  dm.qRepMohlateEghdam.SQL.Add('L.Incommingdate, L.FromOrgID,L.ToOrgID, L.LetterRecommites,rc.Paraph,');
  dm.qRepMohlateEghdam.SQL.Add('rc.DeadLineDate,rc.viewdate,L.Memo,s.SecTitle');
  dm.qRepMohlateEghdam.SQL.Add('FROM Letter L');
  dm.qRepMohlateEghdam.SQL.Add('INNER JOIN ReCommites rc ON rc.LetterID = L.LetterID');
  dm.qRepMohlateEghdam.SQL.Add('LEFT JOIN Secretariats s ON s.SecID = L.SecretariatID');
  dm.qRepMohlateEghdam.SQL.Add('WHERE ((rc.DeadLineDate IS NOT NULL) AND (l.sentletterid IS NULL))');
end;

procedure TFRepMohlateEghdam.FormShow(Sender: TObject);
begin
  inherited;
  SetGridColumnSize;
end;

//procedure TFRepMohlateEghdam.YDBGrid1NeedColorCondition(Column: TColumn;
//  State: TGridDrawState; var Color: TColor);
//begin
////  if Column.Grid.DataSource.DataSet.RecNo mod 2=0 then
////     Color := clWindow
////  else
////     Color := clBtnFace;
//end;

procedure TFRepMohlateEghdam.FormCreate(Sender: TObject);
begin
  inherited;
  SetOrgID;
end;

procedure TFRepMohlateEghdam.SetFromOrgID(const Value: Integer);
begin
  FFromOrgID := Value;
end;

procedure TFRepMohlateEghdam.SetOrgID;
var
  q : TADOQuery;
begin
  q:=TADOQuery.Create(Self);
  q.Connection:=Dm.YeganehConnection;
  q.SQL.Add('SELECT FromOrgID FROM Users WHERE Id='+IntToStr(_UserID));
  q.Open;
  if not q.IsEmpty then
    FromOrgID:=q.FieldValues['FromOrgID']
  else
   MainForm.ShowMsgString('t');
end;

procedure TFRepMohlateEghdam.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  edtDate.Text:=MssCalendarPro1.Execute('/');
end;

end.
