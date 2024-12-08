unit UGroupUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Menus, ExtActns, ActnList, DB, StdCtrls, Buttons,
  ADODB, Grids, DBGrids;

type
  TFGroupUser = class(TMBaseForm)
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    QGroups: TADOQuery;
    QGroupsGroupID: TAutoIncField;
    QGroupsGroupName: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    edtValue: TEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    spGroupUser: TADOStoredProc;
    procedure BitBtn3Click(Sender: TObject);
    procedure edtValueChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FOrgID: Integer;
    procedure SetOrgID(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property OrgID:Integer read FOrgID write SetOrgID;
  end;

var
  FGroupUser: TFGroupUser;

implementation

uses Dmu;

{$R *.dfm}

procedure TFGroupUser.BitBtn3Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFGroupUser.edtValueChange(Sender: TObject);
var
  s : String;
begin
  if QGroups.Active then
  begin
     if Length(edtValue.Text)>0 then
     begin
        QGroups.Filtered:=False;
        QGroups.Filter:='';
        s:=edtValue.Text;
        s:=Dm.ReplaceCharacter(edtValue.Text,char(223),char(152));
        QGroups.Filter:='GroupName Like ''%'+s+'%''';
        QGroups.Filtered:=True;
     end
     else
     begin
        QGroups.Filter:='';
        QGroups.Filtered:=True;
     end;
  end;
end;

procedure TFGroupUser.FormShow(Sender: TObject);
begin
  inherited;
  QGroups.Close;
  QGroups.Open;
end;

procedure TFGroupUser.BitBtn2Click(Sender: TObject);
begin
  inherited;
  try
    spGroupUser.Close;
    spGroupUser.Parameters.ParamByName('@GroupID').Value:=QGroupsGroupID.AsInteger;
    spGroupUser.Parameters.ParamByName('@OrgID').Value:=OrgID;
    spGroupUser.ExecProc;
    ShowMsgString('«‰ ’«» «‰Ã«„ ‘œ');
  except on e : exception do
    ShowMsgString('«‰ ’«» «‰Ã«„ ‰‘œ «“ ‰—„ «›“«— Œ«—Ã ‘œÂ Ê „Ãœœ«  ·«‘ ò‰Ìœ');
  end;

end;

procedure TFGroupUser.SetOrgID(const Value: Integer);
begin
  FOrgID := Value;
end;

procedure TFGroupUser.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FGroupUser:=nil;
end;

end.
