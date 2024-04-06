unit FFillUserMemoUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtCtrls, MssPanelPro, xpWindow, ExtActns, ActnList, Dmu,
  DB, ADODB, Grids, DBGrids, MssDBGrid, DBCtrls;

type
  TFFillUserMemo = class(TMBaseForm)
    MssPanelPro1: TMssPanelPro;
    MssPanelPro2: TMssPanelPro;
    MssPanelPro3: TMssPanelPro;
    MssDBGrid1: TMssDBGrid;
    MssDBGrid2: TMssDBGrid;
    MssDBGrid3: TMssDBGrid;
    QUserMemo: TADOQuery;
    QUserMemo1: TADOQuery;
    QUserMemo2: TADOQuery;
    MssPanelPro4: TMssPanelPro;
    MssPanelPro5: TMssPanelPro;
    MssPanelPro6: TMssPanelPro;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    QUserMemoID: TAutoIncField;
    QUserMemoUserMemo: TStringField;
    QUserMemo1ID: TAutoIncField;
    QUserMemo1UserMemo1: TStringField;
    QUserMemo2ID: TAutoIncField;
    QUserMemo2UserMemo2: TStringField;
    MssPanelPro7: TMssPanelPro;
    MssPanelPro8: TMssPanelPro;
    MssPanelPro9: TMssPanelPro;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    DBNavigator3: TDBNavigator;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure OpendateSets;
  public
    { Public declarations }
  end;

var
  FFillUserMemo: TFFillUserMemo;

implementation

{$R *.dfm}

procedure TFFillUserMemo.FormShow(Sender: TObject);
begin
  inherited;
   with dm do
   begin
     MssPanelPro4.Caption := UserMemo1;
     MssPanelPro5.Caption := UserMemo2;
     MssPanelPro6.Caption := UserMemo3;
   end;
end;

procedure TFFillUserMemo.FormCreate(Sender: TObject);
begin
  inherited;
  OpendateSets;
end;

procedure TFFillUserMemo.OpendateSets;
begin
  QUserMemo.Close;
  QUserMemo.Open;

  QUserMemo1.Close;
  QUserMemo1.Open;

  QUserMemo2.Close;
  QUserMemo2.Open;
end;

end.
