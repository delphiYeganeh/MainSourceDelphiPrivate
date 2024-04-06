unit SecretariatDocSearchUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, xpWindow, ExtActns, ActnList, DB, StdCtrls,
  ExtCtrls, DBCtrls, ADODB, Grids, DBGrids, YDbgrid, Buttons;

type
  TFmSecretariatDocSearch = class(TMBaseForm)
    Panel1: TPanel;
    QSelectSec: TADOQuery;
    dsQSelectSec: TDataSource;
    QSelectSecSecId: TIntegerField;
    Panel2: TPanel;
    Label1: TLabel;
    EditSearch: TEdit;
    Panel3: TPanel;
    QSelectSecSecTitle: TWideStringField;
    Button1: TButton;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    YDBGrid1: TYDBGrid;
    YDBGrid2: TYDBGrid;
    Label3: TLabel;
    QSecretariatDocument: TADOQuery;
    QSecretariatDocumentLetterID: TAutoIncField;
    QSecretariatDocumentIndicatorID: TStringField;
    QSecretariatDocumentIncommingNo: TWideStringField;
    QSecretariatDocumentMemo: TWideStringField;
    SpeedButton3: TSpeedButton;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure EditSearchChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure YDBGrid2TitleClick(Column: TColumn);
    procedure Edit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure dsQSelectSecDataChange(Sender: TObject; Field: TField);
    procedure YDBGrid2NeedColorCondition(Column: TColumn; State: TGridDrawState; var Color: TColor);
    procedure YDBGrid1NeedColorCondition(Column: TColumn; State: TGridDrawState; var Color: TColor);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure YDBGrid2DblClick(Sender: TObject);
  private
    FCancelClicked: Integer;
    { Private declarations }
    procedure DeleteFilter;
    procedure ShowCount;
    procedure OpenDocuments;
    procedure SetCancelClicked(const Value: Integer);
  public
    { Public declarations }
    property CancelClicked:Integer read FCancelClicked write SetCancelClicked;
  end;

var
  FmSecretariatDocSearch: TFmSecretariatDocSearch;

implementation

uses Dmu, UAddDocument;

{$R *.dfm}

procedure TFmSecretariatDocSearch.FormCreate(Sender: TObject);
begin
  inherited;
  QSelectSec.Close;
  QSelectSec.SQL.Clear;
  QSelectSec.SQL.Add('select us.SecId,s.SecTitle FROM UserSecretariats us');
  QSelectSec.SQL.Add('INNER JOIN Secretariats s ON s.SecID = us.SecId');
  QSelectSec.SQL.Add('where us.userid='+IntToStr(_UserId));
  QSelectSec.Open;

  DSForm.DataSet:=QSecretariatDocument;
  CancelClicked:=0;
end;

procedure TFmSecretariatDocSearch.EditSearchChange(Sender: TObject);
var
  s : String;
begin
  if QSelectSec.Active then
  begin
    if Length(EditSearch.Text)>0 then
    begin
      QSelectSec.Filtered:=False;
      QSelectSec.Filter:='';
      s:=EditSearch.Text;
      s:=Dm.ReplaceCharacter(EditSearch.Text,char(223),char(152));
      QSelectSec.Filter:='SecTitle Like ''%'+s+'%''';
      QSelectSec.Filtered:=True;
    end
    else
    begin
      QSelectSec.Filter:='';
      QSelectSec.Filtered:=True;
    end;
  end;
end;

procedure TFmSecretariatDocSearch.Button1Click(Sender: TObject);
begin
  OpenDocuments;

  //if FmSearch.GetSearchValue(QrSrchLinked,'LetterID','IndicatorID',' ',450,500)<>'0' then
  //begin
  //  Select_LetterLinked_LetterID.AsInteger := QrSrchLinkedLetterID.AsInteger;
  //  Select_LetterAfterScroll(Select_Letter);
  //end;
end;

procedure TFmSecretariatDocSearch.YDBGrid2TitleClick(Column: TColumn);
var
  I : Integer;
begin
  for I:=0 to YDBGrid2.Columns.Count-1 do
    YDBGrid2.Columns.Items[I].Color := YDBGrid2.Color;

  YDBGrid2.SelectedIndex := Column.Index;
  YDBGrid2.Columns.Items[Column.Index].Color := clCream;
  Label2.Caption:='Ã” ÃÊ »— «”«” ” Ê‰' +' : '+ Trim(YDBGrid2.Columns.Items[Column.Index].Title.caption);
  Edit1.SetFocus;
end;

procedure TFmSecretariatDocSearch.DeleteFilter;
begin
  if QSecretariatDocument.Active then
  begin
    QSecretariatDocument.Filter:='';
    QSecretariatDocument.Filtered:=True
  end;
end;

procedure TFmSecretariatDocSearch.ShowCount;
begin
  if YDBGrid2.DataSource.DataSet.Active then
    Label3.Caption:='  ⁄œ«œ ' +IntToStr(YDBGrid2.DataSource.DataSet.RecordCount)+' „Ê—œ Ì«›  ‘œ ';
end;

procedure TFmSecretariatDocSearch.Edit1Change(Sender: TObject);
var
  FieldName,s : String;
begin
  if QSecretariatDocument.Active then
  begin
    if Length(Edit1.Text)>0 then
    begin
      QSecretariatDocument.Filtered:=False;
      QSecretariatDocument.Filter:='';
      FieldName:=Trim(YDBGrid2.SelectedField.FieldName);
      s:=Edit1.Text;
      if FieldName<>'IndicatorID' then
      begin
        s:=Dm.ReplaceCharacter(Edit1.Text,char(223),char(152));
        QSecretariatDocument.Filter:=FieldName+' Like ''%'+s+'%''';
      end
      else
        QSecretariatDocument.Filter:=FieldName+' Like ''%'+s+'%''';
      QSecretariatDocument.Filtered:=True;
      ShowCount;
    end
    else
    begin
      DeleteFilter;
      ShowCount;
    end;
  end;
end;

procedure TFmSecretariatDocSearch.FormClose(Sender: TObject;
var
  Action: TCloseAction);
begin
  if CancelClicked=1 then
    FrAddDocument.LinkedLetterID:=0
  else
    if not QSecretariatDocument.IsEmpty then
      FrAddDocument.LinkedLetterID:=QSecretariatDocumentLetterID.AsInteger
    else
      FrAddDocument.LinkedLetterID:=0;

  FmSecretariatDocSearch.Hide;
end;

procedure TFmSecretariatDocSearch.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key=13 then
  begin
    Key:=0;
    Close;
  end;
end;

procedure TFmSecretariatDocSearch.FormActivate(Sender: TObject);
begin
  inherited;
  OpenDocuments;
  Edit1.SetFocus;
  YDBGrid2TitleClick(YDBGrid2.Columns.Items[0]);
end;

procedure TFmSecretariatDocSearch.OpenDocuments;
begin
  if not QSelectSec.IsEmpty then
  begin
    QSecretariatDocument.Close;
    QSecretariatDocument.Parameters.ParamByName('Secretariatid').Value := QSelectSecSecId.AsInteger;
    QSecretariatDocument.Parameters.ParamByName('mYear1').Value := dm.CurrentMyear - 1;//”«· ﬁ»·
    QSecretariatDocument.Parameters.ParamByName('mYear2').Value := dm.CurrentMyear;
    QSecretariatDocument.Open;
    DeleteFilter;
    ShowCount;
  end;
end;

procedure TFmSecretariatDocSearch.dsQSelectSecDataChange(Sender: TObject;
  Field: TField);
begin
  Button1Click(Application);
end;

procedure TFmSecretariatDocSearch.YDBGrid2NeedColorCondition(
  Column: TColumn; State: TGridDrawState; var Color: TColor);
begin
  if Column.Grid.DataSource.DataSet.RecNo Mod 2=0 then
    Color := clBtnFace
  else
    Color := clWhite;
end;

procedure TFmSecretariatDocSearch.YDBGrid1NeedColorCondition(
  Column: TColumn; State: TGridDrawState; var Color: TColor);
begin
  if Column.Grid.DataSource.DataSet.RecNo Mod 2=0 then
    Color := clBtnFace
  else
    Color := clWhite;
end;

procedure TFmSecretariatDocSearch.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TFmSecretariatDocSearch.BitBtn2Click(Sender: TObject);
begin
  CancelClicked:=1;
  Close;
end;

procedure TFmSecretariatDocSearch.SetCancelClicked(const Value: Integer);
begin
  FCancelClicked := Value;
end;

procedure TFmSecretariatDocSearch.YDBGrid2DblClick(Sender: TObject);
begin
  Close;
end;

end.
