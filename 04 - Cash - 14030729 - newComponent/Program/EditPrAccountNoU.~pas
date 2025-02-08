 unit EditPrAccountNoU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Grids, DBGrids, YDbgrid, ActnList,
  StdCtrls, Menus, Buttons, ExtCtrls, DB, ADODB, AdvGlowButton;

type
  TFrEditPrAccountNo = class(TYBaseForm)
    Panel1: TPanel;
    Label1: TLabel;
    xpBitBtn1: TAdvGlowButton;
    Panel2: TPanel;
    YDBGrid1: TDBGrid;
    pnlMain: TPanel;
    procedure xpBitBtn1Click(Sender: TObject);
    procedure YDBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrEditPrAccountNo: TFrEditPrAccountNo;

implementation

uses dmu, YShamsiDate;

{$R *.dfm}

procedure TFrEditPrAccountNo.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
CLOSE;
end;

procedure TFrEditPrAccountNo.YDBGrid1DblClick(Sender: TObject);
 var s: string;
begin
  inherited;
 if dm.Y_InputQuery('ÅÌ‘ ‘„«—Â ',dm.AccountTypePreAccountNo.AsString,s) then
   begin
     dm.AccountType.Edit;
     Dm.AccountTypePreAccountNo.AsString:=s;
     Dm.AccountType.Post;
   end;
end;

procedure TFrEditPrAccountNo.FormShow(Sender: TObject);
begin
  inherited;
   {Ranjbar Ver3}
   DBGrid_LoadColumns(Self.Name,YDBGrid1);

end;

procedure TFrEditPrAccountNo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   {Ranjbar Ver3}
   DBGrid_SaveColumns(Self.Name,YDBGrid1);

end;

end.
