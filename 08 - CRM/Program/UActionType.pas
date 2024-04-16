unit UActionType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, YDbgrid,
  ExtActns, ActnList, DB, ADODB;

type
  TfrActionType = class(TMBaseForm)
    GroupBox2: TGroupBox;
    dbgActionType: TYDBGrid;
    Panel5: TPanel;
    BitBtn3: TBitBtn;
    ADQActionType: TADOQuery;
    ADQActionTypeActionTypeID: TAutoIncField;
    ADQActionTypeActionTypeTitle: TWideStringField;
    ADQActionTypeUserTypeId: TIntegerField;
    ADQActionTypeUserTypeTitle: TWideStringField;
    ADQUserType: TADOQuery;
    ADQUserTypeUserTypeId: TAutoIncField;
    ADQUserTypeUserTypeTitle: TWideStringField;
    ADQUserTypeUserTypeCode: TWideStringField;
    BitBtn1: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);


  private
    procedure SetdbgActionType;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frActionType: TfrActionType;

implementation

uses dmu, YShamsiDate;

{$R *.dfm}
procedure TfrActionType.SetdbgActionType;
var ds :TDataSource;
begin

  with ADQActionType do
  begin
    Close;
    SQL.Text := 'select *  from ActionType ';
    Open;
  end;

  ds := TDataSource.Create(nil);
  ds.DataSet := ADQActionType;

  dbgActionType.DataSource := ds;

end;

procedure TfrActionType.BitBtn3Click(Sender: TObject);
begin
  inherited;
ADQActionType.Append;
end;

procedure TfrActionType.FormCreate(Sender: TObject);
begin
  inherited;

  ADQUserType.Close;
  ADQUserType.Open;
  SetdbgActionType;

end;

procedure TfrActionType.BitBtn1Click(Sender: TObject);
begin
   if ShowMyMessage('ÅÌ€«„','¬Ì« „«Ì· »Â Õ–› —ﬂÊ—œ Ã«—Ì Â” Ìœø',mbOKCancel,mtWarning) = mrOK then
      ADQActionType.Delete;
end;

end.
