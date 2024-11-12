unit uAddExtention;

interface

uses
   YDbgrid, BaseUnit, ActnMan, Controls, Grids, DBGrids, Buttons, SysUtils,Classes,
  ActnList, DB, StdCtrls, ExtActns, XPStyleActnCtrls,  xpBitBtn, Menus,
  ExtCtrls, AppEvnts, AdvGlowButton;

type
  TFrAddExtention = class(TMBaseForm)
    BitBtn1: TAdvGlowButton;
    ActionManager: TActionManager;
    Action1: TAction;
    DBGrid2: TYDBGrid;
    Button1: TAdvGlowButton;
    Button2: TAdvGlowButton;
    Button3: TAdvGlowButton;
    Action2: TAction;
    Panel1: TPanel;
    pnlMain: TPanel;
    procedure BitBtn1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FrAddExtention: TFrAddExtention;

implementation

uses  Dmu, businessLayer, ADODB, uAddExtentionDialog;

{$R *.dfm}

procedure TFrAddExtention.BitBtn1Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrAddExtention.Action1Execute(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrAddExtention.Button1Click(Sender: TObject);
begin
  inherited;
  with  dm,Extention do
  begin
    Insert;
    FrAddExtentionDialog:=TFrAddExtentionDialog.Create(self);
    FrAddExtentionDialog.insertMode := true;
    FrAddExtentionDialog.ShowModal;
  end;
end;

procedure TFrAddExtention.Button2Click(Sender: TObject);
begin
  inherited;
  if not dm.ExtentionIsSystem.AsBoolean then
    if messageShow(39,True) then
    begin
      Exec_delete_Extention(dm.ExtentionExtentionID.AsInteger);
      dm.Extention.Close;
      dm.Extention.Open;
    end;
end;

procedure TFrAddExtention.Button3Click(Sender: TObject);
begin
  inherited;
  if dm.ExtentionIsSystem.AsBoolean then
    exit;

  with  dm,Extention do
  begin
    edit;
    FrAddExtentionDialog:=TFrAddExtentionDialog.Create(self);
    FrAddExtentionDialog.ShowModal;
  end;
end;

end.
