unit UserTableLinkedFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, Grids, DBGrids, YDbgrid, ExtActns, ActnList,
  StdCtrls, Menus;

type
  TFmUserTableLinked = class(TMBaseForm)
    YDBGrid1: TYDBGrid;
    GetUserTableContentBYID: TADOStoredProc;
    GetUserTableContentBYIDID: TAutoIncField;
    GetUserTableContentBYIDUserTableContentID: TIntegerField;
    GetUserTableContentBYIDTableID: TWordField;
    GetUserTableContentBYIDDescription: TWideStringField;
    GetUserTableContentBYIDTableTitle: TStringField;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    UserTableLinkedID:integer;
  end;

var
  FmUserTableLinked: TFmUserTableLinked;

implementation

uses dmu, UserTableInputFm;

{$R *.dfm}

procedure TFmUserTableLinked.FormCreate(Sender: TObject);
begin
  inherited;
with GetUserTableContentBYID do
 begin
   close;
   Parameters.ParamByName('@UserTableContentID').Value:=UserTableLinkedID;
   Open;
 end;
end;

procedure TFmUserTableLinked.Button1Click(Sender: TObject);
begin
  inherited;
  with GetUserTableContentBYID do
 begin
   Insert;
   GetUserTableContentBYIDUserTableContentID.AsInteger:=UserTableLinkedID;
 end;
end;

procedure TFmUserTableLinked.Button2Click(Sender: TObject);
begin
  inherited;
//  DeleteUserTableContent(UserTableLinkedID:integer);

end;

end.
