unit Report_ActiveUsers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Grids, DBGrids, YDbgrid, ExtCtrls, ActnList, DB,
  StdCtrls, ADODB, ExtActns, Buttons, UemsVCL, Menus, AdvGlowButton;

type
  TFrReport_ActiveUsers = class(TYBaseForm)
    Panel1: TPanel;
    Button2: TAdvGlowButton;
    Number: TLabel;
    Button5: TAdvGlowButton;
    Panel2: TPanel;
    YDBGrid1: TYDBGrid;
    pnlMain: TPanel;
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrReport_ActiveUsers: TFrReport_ActiveUsers;

implementation

uses Dmu, businessLayer, YShamsiDate;

{$R *.dfm}

procedure TFrReport_ActiveUsers.Button5Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrReport_ActiveUsers.Button2Click(Sender: TObject);
begin
  inherited;
 YDBGrid1.Print;
end;

procedure TFrReport_ActiveUsers.FormCreate(Sender: TObject);
begin
  inherited;
  Dm.Get_ActiveUser.Open;
  Number.Caption:=' йзого :'+IntToStr(dm.Get_ActiveUser.RecordCount);

end;

procedure TFrReport_ActiveUsers.FormShow(Sender: TObject);
begin
  inherited;
      {Ranjbar Ver3}
   DBGrid_LoadColumns(Self.Name,YDBGrid1);

end;

procedure TFrReport_ActiveUsers.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   {Ranjbar Ver3}
   DBGrid_SaveColumns(Self.Name,YDBGrid1);

end;

end.
