unit BankU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Grids, DBGrids, YDbgrid, ActnList,
  StdCtrls, Menus, Buttons, ExtCtrls, DBCtrls, DB, ADODB, AdvGlowButton;

type
  TFrBank = class(TYBaseForm)
    Panel1: TPanel;
    xpBitBtn2: TAdvGlowButton;
    xpBitBtn3: TAdvGlowButton;
    xpBitBtn1: TAdvGlowButton;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    pnlMain: TPanel;
    procedure xpBitBtn1Click(Sender: TObject);
    procedure xpBitBtn3Click(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrBank: TFrBank;

implementation

uses dmu,YShamsiDate;

{$R *.dfm}

procedure TFrBank.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
  CLOSE;
end;

procedure TFrBank.xpBitBtn3Click(Sender: TObject);
 var s: string;
begin
  inherited;
  if dm.Y_InputQuery('‰«„ »«‰ò ',dm.BankBankTitle.AsString,s) then
   begin
     dm.Bank.Edit;
     Dm.BankBankTitle.AsString:=s;
     Dm.Bank.Post;
   end;

end;

procedure TFrBank.xpBitBtn2Click(Sender: TObject);
 var s: string;
begin
  inherited;
 if dm.Y_InputQuery('‰«„ »«‰ò ','»«‰ò ÃœÌœ',s) then
   begin
     dm.Bank.Insert;
     Dm.BankBankTitle.AsString:=s;
     Dm.Bank.Post;
   end;

end;

procedure TFrBank.FormCreate(Sender: TObject);
begin
  inherited;
  DBNav_Setup(DBNavigator1);
end;

end.
