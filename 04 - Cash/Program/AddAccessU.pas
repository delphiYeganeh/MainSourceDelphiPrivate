unit AddAccessU;

interface

uses
  forms, Classes, ActnList, DB, ADODB, Buttons, Grids, DBGrids,
  YDbgrid, StdCtrls, DBCtrls, Controls,ExtCtrls , Windows,Graphics,SysUtils,Dialogs,baseUnit,
  ExtActns, dbcgrids, ComCtrls, Menus;
type
  TFrAddAccess = class(TYBaseForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Button1: TBitBtn;
    Button2: TBitBtn;
    Panel5: TPanel;
    BitBtn1: TBitBtn;
    BBOK: TBitBtn;
    Label2: TLabel;
    Panel2: TPanel;
    ProgressBar: TProgressBar;
    YDBGrid1: TYDBGrid;
    DBGrid2: TYDBGrid;
    Panel3: TPanel;
    DBCheckBox1: TDBCheckBox;
    procedure BBOKClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure YDBGrid1DblClick(Sender: TObject);
    procedure YDBGrid1NeedFontCondition(Column: TColumn;
      State: TGridDrawState; var F: TFont);
    procedure YDBGrid1NeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure AccessAfterScroll(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
 FrAddAccess: TFrAddAccess;

implementation

uses dmu, mainU, BusinessLayer;


{$R *.dfm}
type code=^integer;

procedure TFrAddAccess.BBOKClick(Sender: TObject);
begin
  close;
end;

procedure TFrAddAccess.BitBtn1Click(Sender: TObject);
begin
  inherited;
  ProgressBar.Show;
  ProgressBar.Position:=1;

  FrMain.AddObjects.Execute;
  ProgressBar.Position:=2;
  Insert_AccessObject;
  ProgressBar.Position;
  ShowMessage('�� ������ ������ ��� ����� ���� ����� ��');
  ProgressBar.Hide;
  Open_ObjectGroup;
end;

procedure TFrAddAccess.YDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  with dm,Select_ObjectAccess_byGroup do
  begin
    Edit;
    Select_ObjectAccess_byGroupAccess.AsBoolean:=not Select_ObjectAccess_byGroupAccess.AsBoolean;
    post;
  end
end;

procedure TFrAddAccess.YDBGrid1NeedFontCondition(Column: TColumn;
  State: TGridDrawState; var F: TFont);
begin
  inherited;
  if dm.Select_ObjectAccess_byGroupAccess.AsBoolean then
    F.Style:=f.Style-[fsBold]
  else
    F.Style:=f.Style+[fsBold];
end;

procedure TFrAddAccess.YDBGrid1NeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
  if dm.Select_ObjectAccess_byGroupAccess.AsBoolean then
    color:= $00FFEFDF
  else
    color:=$00AEAEFF;
end;

procedure TFrAddAccess.FormCreate(Sender: TObject);
begin
  inherited;
  Open_ObjectGroup;
  Dm.Access.AfterScroll:=AccessAfterScroll;
  Dm.Select_ObjectGroup.AfterScroll:=AccessAfterScroll;
  DBLookupComboBox1.KeyValue:=Dm.AccessAccessID.AsInteger;
end;

procedure TFrAddAccess.Button1Click(Sender: TObject);
var
  s: string;
  i: integer;
begin
  inherited;
  with dm do
    if Y_InputQuery('����� ��� ������', '��� ������ ����',s) then
    begin
      i:=SaveAs_Access(s,dm.AccessAccessID.AsInteger);
      Access.close;
      Access.Open;
      DBLookupComboBox1.KeyValue:=i;
    end;
end;

procedure TFrAddAccess.AccessAfterScroll(DataSet: TDataSet);
begin
  with dm do
    Open_ObjectAccess_byGroup(AccessAccessID.AsInteger,Select_ObjectGroupGroupTitle.AsString);
end;

procedure TFrAddAccess.Button2Click(Sender: TObject);
begin
  inherited;
  if messageShowString('��� �� ��� ��� ��� ������ ����� �����',True) then
  begin
    delete_Access(DBLookupComboBox1.KeyValue);
    dm.Access.Close;
    dm.Access.Open;
  end;
end;

end.
