unit ChartWorkGroupUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Menus, ExtActns, ActnList, DB, ComCtrls, DBTreeView, StrUtils,
  ExtCtrls, Buttons, ADODB, ImgList, StdCtrls, AppEvnts, AdvGlowButton;

type
  TChartWorkGroupForm = class(TMBaseForm)
    Panel1: TPanel;
    SpeedButton3: TAdvGlowButton;
    spUpdChartWorkGroupDetail: TADOStoredProc;
    StatImages: TImageList;
    QChartWorkGroupDetails: TADOQuery;
    QChartWorkGroupDetailsChartWorkGroupDetails_ID: TAutoIncField;
    QChartWorkGroupDetailsGroupID: TIntegerField;
    QChartWorkGroupDetailsOrgID: TIntegerField;
    QChartWorkGroupDetailsAccessForErja: TBooleanField;
    QChartWorkGroupDetailsName_Semat: TWideStringField;
    QChartWorkGroupDetailsID: TAutoIncField;
    QChartWorkGroupDetailsParentID: TIntegerField;
    Panel6: TPanel;
    DBTreeView: TDBTreeView;
    SpeedButton1: TAdvGlowButton;
    SpeedButton2: TAdvGlowButton;
    PopupMenu2: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    PopupMenu3: TPopupMenu;
    N5: TMenuItem;
    N6: TMenuItem;
    pnlMain: TPanel;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    FGroupID: Integer;
    { Private declarations }
    procedure UpdateTree(Noa:String;SubTree:String);
    procedure RefreshTree;
    procedure SetGroupID(const Value: Integer);

  public
    { Public declarations }
    property GroupID:Integer read FGroupID write SetGroupID;
  end;

var
  ChartWorkGroupForm: TChartWorkGroupForm;

implementation

uses Dmu;

{$R *.dfm}

procedure TChartWorkGroupForm.RefreshTree;
var
  i : Integer;
begin
  QChartWorkGroupDetails.Close;
  QChartWorkGroupDetails.Parameters.ParamByName('GroupID').Value:=GroupID;
  QChartWorkGroupDetails.Open;
  DBTreeView.Selected.Expand(True);
  for  i:=0  to DBTreeView.Items.Count-1 do
  begin
       if PosEx('ÚÏã ÚÖæíÊ',DBTreeView.Items.Item[i].Text)>0 then
         DBTreeView.Items.Item[i].StateIndex := 5
       else
         DBTreeView.Items.Item[i].StateIndex := 6;
  end;
end;

procedure TChartWorkGroupForm.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TChartWorkGroupForm.UpdateTree(Noa: String;SubTree:String);
begin
  spUpdChartWorkGroupDetail.Close;
  if UpperCase(Noa)=UpperCase('TRUE') then
    spUpdChartWorkGroupDetail.Parameters.ParamByName('@Type').Value:=1
  else
    spUpdChartWorkGroupDetail.Parameters.ParamByName('@Type').Value:=0;

  if UpperCase(SubTree)=UpperCase('TRUE') then
    spUpdChartWorkGroupDetail.Parameters.ParamByName('@SubTree').Value:=1
  else
    spUpdChartWorkGroupDetail.Parameters.ParamByName('@SubTree').Value:=0;


  spUpdChartWorkGroupDetail.Parameters.ParamByName('@GroupID').Value:=GroupID;
  spUpdChartWorkGroupDetail.Parameters.ParamByName('@ID').Value:=Integer(DBTreeView.Selected.Data);
  spUpdChartWorkGroupDetail.ExecProc;
end;

procedure TChartWorkGroupForm.SetGroupID(const Value: Integer);
begin
  FGroupID := Value;
end;

procedure TChartWorkGroupForm.FormShow(Sender: TObject);
begin
  RefreshTree;
  ChartWorkGroupForm.Color:=clWhite;
end;

procedure TChartWorkGroupForm.N5Click(Sender: TObject);
begin
  UpdateTree('TRUE','False');
  RefreshTree;
end;

procedure TChartWorkGroupForm.N3Click(Sender: TObject);
begin
  UpdateTree('False','False');
  RefreshTree;
end;

procedure TChartWorkGroupForm.N4Click(Sender: TObject);
begin
  UpdateTree('False','TRUE');
  RefreshTree;
end;

procedure TChartWorkGroupForm.N6Click(Sender: TObject);
begin
  UpdateTree('TRUE','TRUE');
  RefreshTree;
end;

procedure TChartWorkGroupForm.SpeedButton2Click(Sender: TObject);
begin
  PopupMenu2.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TChartWorkGroupForm.SpeedButton1Click(Sender: TObject);
begin
  PopupMenu3.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

end.
